import 'package:flutter/material.dart';

import '../../constants.dart';

class CustomeAppBar extends StatelessWidget {
  const CustomeAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Spacer(),
        const Text(
          "Cipher School",
          style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.w400,
            color: Color.fromARGB(255, 0, 0, 0),
          ),
        ),
        Spacer(),
        IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.camera_rounded,
              color: Color.fromARGB(255, 0, 0, 0),
            )),
          const Text(
          "Browse",
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w200,
            color: Color.fromARGB(255, 0, 0, 0),
          ),
        ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.doorbell_rounded,
              color: Color.fromARGB(255, 111, 45, 253),
            )),
        IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search_rounded,
            ))
      ],
    );
  }
}
