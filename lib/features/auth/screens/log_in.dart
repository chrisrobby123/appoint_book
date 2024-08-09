import 'package:appoint_book/features/home/screens/home_screen.dart';
import 'package:flutter/material.dart';

import '../../../core/commons/custom_button.dart';

class LogInScreen extends StatefulWidget {
  static const routeName = '/loginscreen';
  const LogInScreen({super.key});

  @override
  State<LogInScreen> createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  navigateToHomeScreen() {
    Navigator.pushNamed(context, HomeScreen.routeName);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 100,
              backgroundImage: AssetImage(
                'assets/images/medimafo.jpeg',
              ),
            ),
            const SizedBox(height: 20),
            CustomButton(
              onPressed: navigateToHomeScreen,
              text: 'Continue with Google',
            )
          ],
        ),
      )),
    );
  }
}
