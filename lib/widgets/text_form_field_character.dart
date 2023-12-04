import 'package:flutter/material.dart';

const colorGreen = Color(0xff24786D);

class CharacTextFormField extends StatelessWidget {
  const CharacTextFormField({super.key, required this.name});

  final String name;
  @override
  Widget build(BuildContext context) {
    return Text(
      name,
      style: const TextStyle().copyWith(
        fontSize: 14,
        fontFamily: 'CircularStd',
        fontWeight: FontWeight.bold,
        color: colorGreen,
      ),
    );
  }
}
