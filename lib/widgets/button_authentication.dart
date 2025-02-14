import 'package:chatbox/widgets/text_form_field_character.dart';
import 'package:flutter/material.dart';

class ButtonAuthentication extends StatelessWidget {
  const ButtonAuthentication({super.key, required this.name, this.wantColorWhite});
  final String name;
  final bool? wantColorWhite;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.06,
      width: MediaQuery.of(context).size.width * 0.9,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: wantColorWhite != null ? Colors.white :colorGreen,
        borderRadius: BorderRadius.circular(17),
      ),

      child: Text(name, style: const TextStyle().copyWith(
        fontSize: 16,
        fontFamily: "Caros",
        color: wantColorWhite != null ? Colors.black : Colors.white,
        fontWeight: FontWeight.w600,
      ),),
    );
  }
}
