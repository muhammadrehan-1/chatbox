import 'package:flutter/material.dart';

const  greenUnderLineColor =  Color(0xff41B2A4);

class BorderedText extends StatelessWidget {
  const BorderedText({super.key, required this.name});

  final String name;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          top: 14,
          child: Container(
            color: greenUnderLineColor,
            height: 7,
            width: 55,
          ),
        ),
        Text(name,
          textAlign: TextAlign.center,
          style: const TextStyle().copyWith(
            fontFamily: 'Caros',
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),),
      ],
    );
  }
}
