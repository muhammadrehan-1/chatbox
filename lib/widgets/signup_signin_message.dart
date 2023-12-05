import 'package:flutter/material.dart';

import '../colors.dart';

class SignUpSignInMessage extends StatelessWidget {
  const SignUpSignInMessage({super.key, required this.message, required this.heightAccordingToScreen});

  final String message;
  final double heightAccordingToScreen;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.75,
      height: MediaQuery.of(context).size.height * heightAccordingToScreen,
      child: Text(
        message,
        textAlign: TextAlign.center,
        style:  const TextStyle().copyWith(
          fontWeight: FontWeight.normal,
          fontFamily: 'CircularStd',
          wordSpacing: 0.1,
          color: greyColor,
          fontSize: 14,
        ),
      ),
    );
  }
}
