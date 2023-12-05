import 'package:chatbox/authentication/sign_up_screen.dart';
import 'package:chatbox/widgets/bordered_text.dart';
import 'package:chatbox/widgets/custom_divider.dart';
import 'package:chatbox/widgets/signup_signin_message.dart';
import 'package:chatbox/widgets/social_media_widget.dart';
import 'package:flutter/material.dart';

import '../helping_variables/text_form_field_decoration.dart';
import '../widgets/button_authentication.dart';
import '../widgets/text_form_field_character.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.05,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const BorderedText(name: 'Log in'),
                  const SizedBox(
                    width: 7,
                  ),
                  Text(
                    'to Chatbox',
                    textAlign: TextAlign.center,
                    style: const TextStyle().copyWith(
                      fontFamily: 'Caros',
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              const SignUpSignInMessage(
                  message:
                      'Welcome back! Sign in using your social account or email us to continue',
                  heightAccordingToScreen: 0.06),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.6,
                height: MediaQuery.of(context).size.height * 0.12,
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SocialMediaWidget(
                        imagePath:
                            "assets/images/social_media_logos/facebook.png",isBlackBorder: true),
                    SocialMediaWidget(
                        imagePath:
                            "assets/images/social_media_logos/google.png", isBlackBorder: true,),
                    SocialMediaWidget(
                        imagePath:
                            "assets/images/social_media_logos/apple.png",isBlackBorder:true),
                  ],
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.9,
                height: MediaQuery.of(context).size.height * 0.08,
                child: Row(
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
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.275,
                width: MediaQuery.of(context).size.width * 0.9,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const CharacTextFormField(name: 'Email'),
                    TextFormField(
                      cursorColor: formFieldBorderColor,
                      textAlign: TextAlign.start,
                      style: const TextStyle().copyWith(
                        fontFamily: 'Caros',
                        fontSize: 16,
                        color: const Color(0xff000e08),
                      ),
                      decoration: decorationForTextFormField,
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.04,
                    ),
                    const CharacTextFormField(name: 'Password'),
                    TextFormField(
                      cursorColor: formFieldBorderColor,
                      textAlign: TextAlign.start,
                      style: const TextStyle().copyWith(
                        fontFamily: 'Caros',
                        fontSize: 16,
                        color: const Color(0xff000e08),
                      ),
                      decoration: decorationForTextFormField,
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.04,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.08,
              ),
              InkWell(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) {
                        return const SignUpScreen();
                      }),
                    );
                  },
                  child: const ButtonAuthentication(name: "Log in")),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              const CharacTextFormField(name: 'Forgot password?')
            ],
          ),
        ),
      ),
    );
  }
}
