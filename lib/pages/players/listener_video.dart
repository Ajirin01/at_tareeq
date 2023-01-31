import 'package:at_tareeq/config/big_text.dart';
import 'package:at_tareeq/config/small_text.dart';
import 'package:at_tareeq/pages/players/video_player_app.dart';
import 'package:at_tareeq/widget/comment_item.dart';
import 'package:flutter/material.dart';

class ListenerVideo extends StatefulWidget {
  const ListenerVideo({Key? key}) : super(key: key);

  @override
  State<ListenerVideo> createState() => _ListenerVideoState();
}

class _ListenerVideoState extends State<ListenerVideo> {

  @override
  Widget build(BuildContext context) {
    return VideoPlayerApp(
      topWidget: _info(),
      bottomWidget: _comments(),
    );
  }

  Widget _info() => Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Row(
        children: [
          CircleAvatar(
            radius: 16,
            backgroundColor: Colors.transparent,
            backgroundImage: AssetImage(
              'assets/empty.png',
            ),
          ),
          const SizedBox(width: 8,),
          SmallText(text: 'Lecturer', color: Colors.white,),
        ],
      ),
      const SizedBox(height: 8,),
      Row(
        children: [
          Icon(
            Icons.topic_outlined,
            color: Colors.white,
          ),
          const SizedBox(width: 8,),
          SmallText(text: 'Topic', color: Colors.white,),
        ],
      ),
    ],
  );

  Widget _comments() => Padding(
    padding: const EdgeInsets.symmetric(vertical: 32, horizontal: 16),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        CommentItem(),
        CommentItem(),
        CommentItem(),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(child: TextFormField(
              style: TextStyle(
                  color: Colors.white
              ),
              decoration: InputDecoration(
                suffixIcon: IconButton(
                  icon: Icon(
                    Icons.send_rounded,
                    color: Colors.white,
                  ),
                  onPressed: (){},
                ),
                hintText: 'Comment here',
                hintStyle: TextStyle(
                    color: Colors.white
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide(
                      color: Colors.white
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide(
                      color: Colors.white
                  ),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide(
                      color: Colors.white
                  ),
                ),
              ),
            )),
            IconButton(
              icon: Icon(
                Icons.favorite_outline_rounded,
                color: Colors.white,
                size: 36,
              ),
              onPressed: () {},
            ),
          ],
        ),
      ],
    ),
  );
}
