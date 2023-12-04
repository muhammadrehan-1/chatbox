import 'package:flutter/material.dart';

class SocialMediaWidget extends StatelessWidget {
  const SocialMediaWidget({super.key, required this.imagePath});

  final String imagePath;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      width: 55,
      height: 55,
      decoration: BoxDecoration(
          border: Border.all(
            color: Colors.black,
            width: 1,
          ),
          color: Colors.white,
          shape: BoxShape.circle
      ),
      child: Image.asset(imagePath ,
        alignment: Alignment.center,
      ),
    );
  }
}
