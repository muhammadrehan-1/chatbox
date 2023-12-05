import 'package:flutter/material.dart';

class SocialMediaWidget extends StatelessWidget {
  const SocialMediaWidget({super.key, required this.imagePath, required this.isBlackBorder, this.wantToMakeAppleLogoWhite});

  final String imagePath;
  final bool isBlackBorder;
  final bool? wantToMakeAppleLogoWhite;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      width: 55,
      height: 55,
      decoration: BoxDecoration(
          border: Border.all(
            color: isBlackBorder ? Colors.black : Colors.white,
            width: 1,
          ),
          color: isBlackBorder ? Colors.white : Colors.black,
          shape: BoxShape.circle
      ),
      child: Image.asset(imagePath,
        alignment: Alignment.center,
        color: wantToMakeAppleLogoWhite != null ? Colors.white : null,
      ),
    );
  }
}
