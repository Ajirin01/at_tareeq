import 'package:at_tareeq/config/big_text.dart';
import 'package:at_tareeq/config/color.dart';
import 'package:at_tareeq/config/small_text.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';

class AudioPlayerApp extends StatefulWidget {
  const AudioPlayerApp({Key? key,
    required this.menuItem,
  }) : super(key: key);

  final Widget menuItem;


  @override
  State<AudioPlayerApp> createState() => _AudioPlayerAppState();
}

class _AudioPlayerAppState extends State<AudioPlayerApp> {

  final audioPlayer = AudioPlayer();
  bool isPlaying = false;
  Duration duration = Duration.zero;
  Duration position = Duration.zero;

  static bool isOpened = false;
  ExpandableController controller = ExpandableController(
    initialExpanded: isOpened,
  );


  @override
  void initState() {
    super.initState();

    controller.addListener(() {
      isOpened = !isOpened;
    });

    setAudio();

    audioPlayer.onPlayerStateChanged.listen((event) {
      setState(() {
        isPlaying = event == PlayerState.playing;
      });
    });

    audioPlayer.onDurationChanged.listen((event) {
      setState(() {
        duration = event;
      });
    });

    audioPlayer.onPositionChanged.listen((event) {
      setState(() {
        position = event;
      });
    });
  }

  Future setAudio() async{
    audioPlayer.setReleaseMode(ReleaseMode.loop);

    final player = AudioCache(prefix: 'assets/');
    final url = await player.load('aziz.mp3');
    audioPlayer.setSourceUrl(url.path);
  }

  @override
  void dispose() {
    controller.dispose();
    audioPlayer.dispose();
    super.dispose();
  }

  String _printDuration(Duration duration) {
    String twoDigits(int n) => n.toString().padLeft(2, "0");
    String twoDigitMinutes = twoDigits(duration.inMinutes.remainder(60));
    String twoDigitSeconds = twoDigits(duration.inSeconds.remainder(60));
    return '$twoDigitMinutes:$twoDigitSeconds';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: IconThemeData(
          color: CustomColor.appBlue,
        ),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(50),
                    child: Image.asset(
                      'assets/pic_one.png',
                      width: double.infinity,
                      height: 350,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(height: 32,),
                  Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(8),
                        child: IconButton(
                          icon: Icon(
                              Icons.more_vert_rounded
                          ),
                          onPressed: () {
                            controller.toggle();
                          },
                        ),
                      ),
                      Expanded(child: Container(
                        child: BigText(text: 'Title', color: Colors.black, textAlign: TextAlign.center,),
                      )),
                      Container(
                        padding: const EdgeInsets.all(8),
                        child: IconButton(
                          icon: Icon(
                            Icons.favorite_outline_rounded,
                          ),
                          onPressed: () {},
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 8,),
                  SmallText(text: 'Lecturer'),
                  SliderTheme(
                    data: SliderThemeData(
                      thumbColor: Colors.black,
                      trackHeight: 2,
                      thumbShape: RoundSliderThumbShape(enabledThumbRadius: 6),
                    ),
                    child: Slider(
                      activeColor: Colors.black,
                      inactiveColor: Colors.grey,
                      min: 0,
                      max: duration.inSeconds.toDouble(),
                      value: position.inSeconds.toDouble(),
                      onChanged: (value) async{
                        final position = Duration(seconds:  value.toInt());
                        await audioPlayer.seek(position);

                        await audioPlayer.resume();
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(_printDuration(position)),
                        Text(_printDuration(duration)),
                      ],
                    ),
                  ),
                  const SizedBox(height: 32,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        icon: Icon(
                          Icons.fast_rewind_rounded,
                          color: Colors.black,
                        ),
                        iconSize: 38,
                        onPressed: () {},
                      ),
                      IconButton(
                        icon: Icon(
                          Icons.rotate_left_rounded,
                          color: Colors.black,
                        ),
                        iconSize: 38,
                        onPressed: () {},
                      ),
                      CircleAvatar(
                        backgroundColor: Colors.black,
                        radius: 35,
                        child: IconButton(
                          icon: Icon(
                            isPlaying? Icons.pause_rounded : Icons.play_arrow_rounded,
                            color: Colors.white,
                          ),
                          iconSize: 50,
                          onPressed: () async{
                            if(isPlaying){
                              await audioPlayer.pause();
                            }else {
                              await audioPlayer.resume();
                            }
                          },
                        ),
                      ),
                      IconButton(
                        icon: Icon(
                          Icons.rotate_right_rounded,
                          color: Colors.black,
                        ),
                        iconSize: 38,
                        onPressed: () {},
                      ),
                      IconButton(
                        icon: Icon(
                          Icons.fast_forward_rounded,
                          color: Colors.black,
                        ),
                        iconSize: 38,
                        onPressed: () {},
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: _menu(),
            )
          ],
        ),
      ),
    );
  }

  Widget _menu() => Stack(
    children: [
      Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ExpandablePanel(
            controller: controller,
            theme: ExpandableThemeData(
              tapBodyToCollapse: false,
              tapBodyToExpand: false,
            ),
            collapsed: Container(),
            expanded: _menuItem(),
            builder: (_, collapsed, expanded) => Expandable(
                collapsed: collapsed,
                expanded: expanded
            ),
          ),
        ],
      ),
    ],
  );

  Widget _menuItem() => Stack(
    children: [
      Container(
        decoration: BoxDecoration(
          color: CustomColor.appBlue.withOpacity(0.9),
          borderRadius: BorderRadius.only(topRight: Radius.circular(12), topLeft: Radius.circular(12)),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.only(topRight: Radius.circular(12), topLeft: Radius.circular(12)),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 32, horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Row(
                  children: [
                    Expanded(child: Row(
                      children: [
                        CircleAvatar(
                          radius: 32,
                          backgroundImage: AssetImage(
                              'assets/pic_one.png'
                          ),
                        ),
                        const SizedBox(width: 8,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            BigText(text: 'Title', fontSize: 16, color: Colors.white,),
                            const SizedBox(height: 8,),
                            SmallText(text: 'Lecturer', fontSize: 15, color: Colors.white,)
                          ],
                        ),
                      ],
                    )),
                    IconButton(
                      icon: Icon(
                        Icons.favorite_outline_rounded,
                        color: Colors.white,
                      ),
                      onPressed: () {},
                    ),
                    IconButton(
                      icon: Icon(
                        Icons.cancel_outlined,
                        color: Colors.white,
                      ),
                      onPressed: () {
                        controller.toggle();
                      },
                    ),
                  ],
                ),
                const SizedBox(height: 16,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    widget.menuItem
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    ],
  );
}
