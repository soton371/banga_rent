import 'package:flutter/material.dart';

class HeroWidget extends StatelessWidget {
  const HeroWidget({super.key, required this.img, required this.title});
  final String img, title;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image(
          image: AssetImage(img),
          height: 20,
          width: 20,
        ),
        const SizedBox(width: 5,),
        Text(
          title,
          style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w600,
              letterSpacing: -0.5,
              color: Colors.white),
        )
      ],
    );
  }
}
