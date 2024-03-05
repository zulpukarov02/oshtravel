import 'package:flutter/material.dart';
import 'package:oshtravel/app/modules/welkom/welcom_screen2.dart';

class CirkuleAvatar extends StatelessWidget {
  const CirkuleAvatar({
    super.key,
    required this.image,
    required this.text,
  });
  final String image;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(5, 30, 20, 0),
          child: CircleAvatar(
            radius: 40,
            backgroundImage: AssetImage(image),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(5, 30, 20, 0),
          child: TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const WelcomScreen2(),
                ),
              );
            },
            child: Text(
              text,
              style: const TextStyle(
                  fontWeight: FontWeight.w400,
                  color: Colors.white,
                  fontSize: 23),
            ),
          ),
        ),
      ],
    );
  }
}
