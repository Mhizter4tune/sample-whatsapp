import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../data/sample_data.dart';

Widget buildStory(BuildContext context) {
  _buildProfilePic(Friend status, int index) {
    return CircleAvatar(
      radius: 37.5,
      backgroundImage: AssetImage(status.imgUrl),
    );
  }

  return Container(
    color: const Color.fromARGB(255, 223, 221, 221),
    height: 120.0,
    width: double.infinity,
    child: ListView.builder(
        padding: const EdgeInsets.only(left: 10.0),
        scrollDirection: Axis.horizontal,
        itemCount: status.length,
        itemBuilder: (BuildContext context, int index) {
          return Column(
            children: [
              Container(
                margin: const EdgeInsets.all(8.0),
                child: CircleAvatar(
                    radius: 40.0,
                    backgroundColor: const Color.fromRGBO(36, 36, 36, 1),
                    child: _buildProfilePic(status[index], index)),
              ),
              Text(status[index].name,
                  style: GoogleFonts.cormorant(
                      fontWeight: FontWeight.w800,
                      color: const Color.fromARGB(255, 14, 0, 0)))
            ],
          );
        }),
  );
}
