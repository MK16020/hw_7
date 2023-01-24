import 'package:flutter/material.dart';

import '../components/header.dart';
import '../components/user.dart';
import '../model/story.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: const Color(0xffd7e9fd),
        child: Column(
          children: [
            const HeaderImage(),
            Container(
              padding: const EdgeInsets.all(24),
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(18.0),
                    topLeft: Radius.circular(18.0),
                  )),
              child: Column(
                children: [
                  const UserId(),
                  const Divider(),
                  const SizedBox(
                    height: 20,
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 2,
                        itemBuilder: (context, index) => Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: StoryWidget(story: stories[index], index: index),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class StoryWidget extends StatelessWidget {
  final Story story;
  final int index;
  const StoryWidget({
    Key? key,
    required this.story,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 250,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            boxShadow: const [BoxShadow(color: Colors.grey, blurRadius: 15, spreadRadius: 5, offset: Offset.zero)],
          ),
          width: 160.0,
          child: Image(
            image: AssetImage(
              (stories[index].storyImage),
            ),
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          top: 8,
          left: 6,
          child: Container(
            clipBehavior: Clip.hardEdge,
            height: 60,
            width: 60,
            decoration: BoxDecoration(
                border: Border.all(
                  width: 4,
                  color: Colors.white,
                ),
                borderRadius: BorderRadius.circular(30)),
            child: Image(
              image: AssetImage(stories[index].userImage),
              fit: BoxFit.fill,
            ),
          ),
        ),
        Positioned(
          top: 20,
          left: 75,
          child: Text(stories[index].userName),
        )
      ],
    );
  }
}
