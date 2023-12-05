import 'package:flutter/material.dart';
import '../colors.dart';


class CustomDivider extends StatelessWidget {
  const CustomDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: formFieldBorderColor,
      height: 1,
      width: MediaQuery.of(context).size.width * 0.4,
    );
  }
}
