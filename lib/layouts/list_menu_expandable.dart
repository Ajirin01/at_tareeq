import 'package:at_tareeq/widget/audio_player_menu_item.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';

import '../config/big_text.dart';
import '../config/color.dart';
import '../config/small_text.dart';
import '../pages/players/listener_audio_player.dart';
import '../widget/custom_page_route.dart';
import '../widget/list_item.dart';

class ListMenuExpandable extends StatefulWidget {
  const ListMenuExpandable({Key? key,
    required this.widget,
  }) : super(key: key);

  final Widget widget;

  @override
  State<ListMenuExpandable> createState() => _ListMenuExpandableState();
}

class _ListMenuExpandableState extends State<ListMenuExpandable> {

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
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  widget.widget,
                  SizedBox(height: 16,),
                  ListItem(title: 'Title', onTap: (){Navigator.of(context).push(CustomPageRoute(child: ListenerAudioPlayer()));}, lecturer: 'Lecturer', onTapPlay: (){}, onTapMenu: (){controller.toggle();}),
                  ListItem(title: 'Title', onTap: (){Navigator.of(context).push(CustomPageRoute(child: ListenerAudioPlayer()));}, lecturer: 'Lecturer', onTapPlay: (){}, onTapMenu: (){controller.toggle();}),
                  ListItem(title: 'Title', onTap: (){Navigator.of(context).push(CustomPageRoute(child: ListenerAudioPlayer()));}, lecturer: 'Lecturer', onTapPlay: (){}, onTapMenu: (){controller.toggle();}),
                  ListItem(title: 'Title', onTap: (){Navigator.of(context).push(CustomPageRoute(child: ListenerAudioPlayer()));}, lecturer: 'Lecturer', onTapPlay: (){}, onTapMenu: (){controller.toggle();}),
                  ListItem(title: 'Title', onTap: (){Navigator.of(context).push(CustomPageRoute(child: ListenerAudioPlayer()));}, lecturer: 'Lecturer', onTapPlay: (){}, onTapMenu: (){controller.toggle();}),
                  ListItem(title: 'Title', onTap: (){Navigator.of(context).push(CustomPageRoute(child: ListenerAudioPlayer()));}, lecturer: 'Lecturer', onTapPlay: (){}, onTapMenu: (){controller.toggle();}),
                  ListItem(title: 'Title', onTap: (){Navigator.of(context).push(CustomPageRoute(child: ListenerAudioPlayer()));}, lecturer: 'Lecturer', onTapPlay: (){}, onTapMenu: (){controller.toggle();}),
                  ListItem(title: 'Title', onTap: (){Navigator.of(context).push(CustomPageRoute(child: ListenerAudioPlayer()));}, lecturer: 'Lecturer', onTapPlay: (){}, onTapMenu: (){controller.toggle();}),
                  ListItem(title: 'Title', onTap: (){Navigator.of(context).push(CustomPageRoute(child: ListenerAudioPlayer()));}, lecturer: 'Lecturer', onTapPlay: (){}, onTapMenu: (){controller.toggle();}),
                  ListItem(title: 'Title', onTap: (){Navigator.of(context).push(CustomPageRoute(child: ListenerAudioPlayer()));}, lecturer: 'Lecturer', onTapPlay: (){}, onTapMenu: (){controller.toggle();}),
                  ListItem(title: 'Title', onTap: (){Navigator.of(context).push(CustomPageRoute(child: ListenerAudioPlayer()));}, lecturer: 'Lecturer', onTapPlay: (){}, onTapMenu: (){controller.toggle();}),
                  ListItem(title: 'Title', onTap: (){Navigator.of(context).push(CustomPageRoute(child: ListenerAudioPlayer()));}, lecturer: 'Lecturer', onTapPlay: (){}, onTapMenu: (){controller.toggle();}),
                  ListItem(title: 'Title', onTap: (){Navigator.of(context).push(CustomPageRoute(child: ListenerAudioPlayer()));}, lecturer: 'Lecturer', onTapPlay: (){}, onTapMenu: (){controller.toggle();}),
                  ListItem(title: 'Title', onTap: (){Navigator.of(context).push(CustomPageRoute(child: ListenerAudioPlayer()));}, lecturer: 'Lecturer', onTapPlay: (){}, onTapMenu: (){controller.toggle();}),
                  ListItem(title: 'Title', onTap: (){Navigator.of(context).push(CustomPageRoute(child: ListenerAudioPlayer()));}, lecturer: 'Lecturer', onTapPlay: (){}, onTapMenu: (){controller.toggle();}),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: _menu(),
          ),
        ],
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
                    AudioPlayerMenuItem(icon: Icons.watch_later_outlined, text: 'Play later'),
                    AudioPlayerMenuItem(icon: Icons.skip_next, text: 'Play Next'),
                    AudioPlayerMenuItem(icon: Icons.add_to_queue_rounded, text: 'Add to Queue'),
                    AudioPlayerMenuItem(icon: Icons.playlist_add, text: 'Add to Playlist'),
                    AudioPlayerMenuItem(icon: Icons.download_rounded, text: 'Download'),
                    AudioPlayerMenuItem(icon: Icons.person_rounded, text: 'View Host'),
                    AudioPlayerMenuItem(icon: Icons.share_outlined, text: 'Share'),
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
