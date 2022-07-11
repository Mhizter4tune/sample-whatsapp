import 'package:flutter/material.dart';

class FABWidget extends StatelessWidget {
  const FABWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {},
      backgroundColor: const Color.fromARGB(164, 223, 221, 221),
      child: const Icon(
        Icons.add,
        color: Colors.black,
      ),
    );
  }
}
