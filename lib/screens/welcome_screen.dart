import 'package:chatbox/authentication/sign_in_screen.dart';
import 'package:chatbox/authentication/sign_up_screen.dart';
import 'package:chatbox/widgets/custom_divider.dart';
import 'package:chatbox/widgets/social_media_widget.dart';
import 'package:flutter/material.dart';

import '../widgets/button_authentication.dart';

final gradientColors = [
  const Color(0xff000000),
  const Color(0xff0A1832),
  const Color(0xff43116A),
  const Color(0xff000000),
  const Color(0xff000000),
];

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              height: MediaQuery.of(context).size.height * 0.6,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: gradientColors,
                    begin: Alignment.topLeft,
                    end: Alignment.bottomCenter),
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.1,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('assets/images/logo.png',
                          height: 20, color: Colors.white),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Chatbox',
                        style: const TextStyle().copyWith(
                          fontWeight: FontWeight.w500,
                          fontFamily: 'CircularStd',
                          fontSize: 14,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.05,
                  ),
                  Text(
                    'Connect friends',
                    style: const TextStyle().copyWith(
                      fontFamily: 'Caros',
                      fontSize: 68,
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    'easily & quickly',
                    style: const TextStyle().copyWith(
                      fontFamily: 'Caros',
                      fontSize: 68,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  Text(
                    'Our chat app is the perfect way to stay connected with friends and family.',
                    textAlign: TextAlign.start,
                    style: const TextStyle().copyWith(
                      fontWeight: FontWeight.w300,
                      fontFamily: 'CircularStd',
                      wordSpacing: 0.1,
                      color: const Color(0xffB9C1BE),
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.6,
                    height: MediaQuery.of(context).size.height * 0.16,
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        SocialMediaWidget(
                            imagePath:
                                "assets/images/social_media_logos/facebook.png",
                            isBlackBorder: false),
                        SocialMediaWidget(
                            imagePath:
                                "assets/images/social_media_logos/google.png",
                            isBlackBorder: false),
                        SocialMediaWidget(
                            imagePath:
                                "assets/images/social_media_logos/apple.png",
                            isBlackBorder: false,
                            wantToMakeAppleLogoWhite: true),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const CustomDivider(),
                      Text(
                        'OR',
                        style: const TextStyle().copyWith(
                          color: greyColor,
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      const CustomDivider(),
                    ],
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),
                  InkWell(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(builder: (ctx) {
                            return const SignUpScreen();
                          }),
                        );
                      },
                      child: const ButtonAuthentication(
                          name: 'Sign up with mail', wantColorWhite: true)),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Existing Account? ',
                        style: const TextStyle().copyWith(
                            fontWeight: FontWeight.w300,
                            fontSize: 14,
                            fontFamily: 'CircularStd',
                            color: const Color(0xffB9C1BE)),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(builder: (ctx) {
                              return const SignInScreen();
                            }),
                          );
                        },
                        child: Text(
                          'Log in',
                          style: const TextStyle().copyWith(
                            fontWeight: FontWeight.w500,
                            fontSize: 14,
                            fontFamily: 'CircularStd',
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
