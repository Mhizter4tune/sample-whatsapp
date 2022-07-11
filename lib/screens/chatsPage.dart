import 'package:flutter/material.dart';
import 'package:sample_whatsapp/widgets/fab_Widget.dart';

import '../widgets/recentChats_Widget.dart';
import '../widgets/stories_Widget.dart';

class buildChatsPage extends StatelessWidget {
  const buildChatsPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        buildStory(context),
        Expanded(
          child: Container(
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('kayks.jpg'), fit: BoxFit.cover)),
              child: const recentChatsWidget()),
        ),
      ]),
      floatingActionButton: const FABWidget(),
    );
  }
}
