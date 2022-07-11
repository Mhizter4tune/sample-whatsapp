import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';

import 'chatsPage.dart';
import 'package:sample_whatsapp/screens/statusPage.dart';
import 'callsPage.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: const Color.fromRGBO(36, 36, 36, 1),
        appBar: AppBar(
          backgroundColor: const Color.fromRGBO(36, 36, 36, 1),
          title: Text(
            '4tune_WhatsApp',
            style: GoogleFonts.pacifico(fontSize: 32.5),
          ),
          actions: [
            IconButton(
              icon: const Icon(Icons.search),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(Icons.more_vert),
              onPressed: () {},
            ),
          ],
          elevation: 0.0,
          bottom: const TabBar(
              indicatorWeight: 3.0,
              indicatorColor: Color.fromRGBO(36, 36, 36, 1),
              tabs: [
                Tab(
                    child: Text('CHATS',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold))),
                Tab(
                    child: Text('STATUS',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold))),
                Tab(
                    child: Text('CALLS',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold))),
              ]),
        ),
        body: const TabBarView(children: [
          buildChatsPage(),
          StatusPage(),
          CallsPage(),
        ]),
      ),
    );
  }
}
