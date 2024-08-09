import 'package:appoint_book/features/auth/screens/log_in.dart';
import 'package:appoint_book/theme/pallete.dart';
import 'package:flutter/material.dart';

import 'features/home/screens/home_screen.dart';
import 'features/splash/screens/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Book Appointment',
      debugShowCheckedModeBanner: false,
      theme: Pallete.darkmodeAppTheme,
      home: const SplashScreen(),
      routes: {
        LogInScreen.routeName: (context) => const LogInScreen(),
        HomeScreen.routeName: (context) => const HomeScreen(),
      },
    );
  }
}
