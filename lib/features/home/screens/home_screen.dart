import 'package:appoint_book/features/appointment/screens/book_appointment_screen.dart';
import 'package:appoint_book/features/home/screens/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';

class HomeScreen extends StatefulWidget {
  static const routeName = '/homeScreen';
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int page = 0;

  onTap(int index) {
    setState(() {
      page = index;
    });
  }

  List<Widget> screens = [
    const Home(),
    const BookAppointmentScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[page],
      bottomNavigationBar:
          BottomNavigationBar(currentIndex: page, onTap: onTap, items: const [
        BottomNavigationBarItem(icon: Icon(IconlyLight.home), label: 'Home'),
        BottomNavigationBarItem(icon: Icon(IconlyLight.bookmark), label: 'Book')
      ]),
    );
  }
}
