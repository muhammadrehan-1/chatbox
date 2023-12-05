import 'package:chatbox/widgets/button_authentication.dart';
import 'package:chatbox/widgets/signup_signin_message.dart';
import 'package:chatbox/widgets/text_form_field_character.dart';
import 'package:flutter/material.dart';
import '../colors.dart';
import '../helping_variables/text_form_field_decoration.dart';
import '../widgets/bordered_text.dart';



class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
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
                  Text(
                    'Sign up with',
                    textAlign: TextAlign.center,
                    style: const TextStyle().copyWith(
                      fontFamily: 'Caros',
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(
                    width: 7,
                  ),
                  const BorderedText(name: 'Email'),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              const SignUpSignInMessage(
                  message:
                      'Get chatting with friends and family today by signing up for our chat app!',
                  heightAccordingToScreen: 0.12),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.55,
                width: MediaQuery.of(context).size.width * 0.9,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const CharacTextFormField(name: 'Your name'),
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
                    const CharacTextFormField(name: 'Your email'),
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
                    const CharacTextFormField(name: 'Confirm password'),
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
                  ],
                ),
              ),
              const ButtonAuthentication(name: "Create an account"),
            ],
          ),
        ),
      ),
    );
  }
}
