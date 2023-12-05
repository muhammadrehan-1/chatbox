import 'package:flutter/material.dart';

class StatusCircle extends StatelessWidget {
  const StatusCircle({super.key, required this.image, required this.firstName});

  final String image;
  final String firstName;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            padding: const EdgeInsets.all(3),
            width: 60,
            height: 60,
            decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.white,
                  width: 1,
                ),
                color: Colors.black,
                shape: BoxShape.circle),
            child:  CircleAvatar(

                foregroundImage: AssetImage(image)
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.01,
          ),
          Text(firstName, style: const TextStyle().copyWith(
            fontFamily: 'Caros',
            fontWeight: FontWeight.w400,
            fontSize: 14,
            color: Colors.white,
          ),)

        ],
      ),
    );
  }
}
