import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../data/sample_data.dart';

class recentChatsWidget extends StatelessWidget {
  const recentChatsWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        color: Colors.black54,
        child: ListView.builder(
            itemCount: chats.length,
            itemBuilder: (BuildContext context, int index) {
              Message chat = chats[index];
              return Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 8.0, horizontal: 10.0),
                child: Row(
                  children: [
                    Container(
                      height: 60.0,
                      width: 60.0,
                      decoration: BoxDecoration(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(15.0)),
                        image: DecorationImage(
                            image: AssetImage(chat.sender.imgUrl),
                            fit: BoxFit.cover),
                      ),
                    ),
                    const SizedBox(
                      width: 10.0,
                    ),
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.all(8.0),
                        height: 65.0,
                        // width: 300.0 OR MediaQuery.of(context).size.width * .70,
                        decoration: BoxDecoration(
                            color: Colors.white30,
                            border: Border.all(
                                color: Colors.white60,
                                style: BorderStyle.solid),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(7.0))),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              chat.text,
                              // 'He told me that you would have to bear the pain for the mean time before taking the dosage!',
                              style: GoogleFonts.pacifico(
                                  fontSize: 13.0, color: Colors.white70),
                              overflow: TextOverflow.ellipsis,
                            ),
                            const SizedBox(
                              height: 7.0,
                            ),
                            Text(
                              chat.time,
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 10.0,
                                color: Color.fromARGB(255, 223, 221, 221),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 18.0,
                    ),
                    Container(
                      height: 60.0,
                      width: 30.0,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          chat.isOnline == true
                              ? const Text(
                                  'Online',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 10.0,
                                    color: Colors.green,
                                    // color: Color.fromARGB(255, 223, 221, 221),
                                  ),
                                )
                              : const SizedBox.shrink(),
                          const SizedBox(height: 5.0),
                          Container(
                            height: 12.0,
                            width: 12.0,
                            decoration: BoxDecoration(
                                color: chat.isOnline == true
                                    ? Colors.green
                                    : Colors.transparent,
                                borderRadius: BorderRadius.circular(6.0)),
                            child: const Center(
                                child: Text('',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 10.0,
                                    ))),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              );
            }),
      ),
    );
  }
}
