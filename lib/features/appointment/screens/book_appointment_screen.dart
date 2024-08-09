import 'package:appoint_book/core/commons/custom_button.dart';
import 'package:appoint_book/core/commons/custom_textformfield.dart';
import 'package:appoint_book/theme/pallete.dart';
import 'package:flutter/material.dart';

class BookAppointmentScreen extends StatefulWidget {
  const BookAppointmentScreen({super.key});

  @override
  State<BookAppointmentScreen> createState() => _BookAppointmentScreenState();
}

class _BookAppointmentScreenState extends State<BookAppointmentScreen> {
  final TextEditingController controller = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Pallete.greenColor,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          child: Container(
            child: Column(
              children: [
                Text(
                  'BOOK APPOINTMENT',
                  style: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 15),
                Container(
                  child: CustomTextFormField(
                    controller: controller,
                    hintText: 'Enter Full Name',
                  ),
                ),
                const SizedBox(height: 15),
                Container(
                  child: CustomTextFormField(
                    controller: controller,
                    hintText: 'Enter Mobile Number',
                  ),
                ),
                const SizedBox(height: 15),
                Container(
                  child: CustomTextFormField(
                    controller: controller,
                    hintText: 'Enter email address ',
                  ),
                ),
                const SizedBox(height: 15),
                Container(
                  child: CustomTextFormField(
                    controller: controller,
                    hintText: 'Enter Appointment Date',
                  ),
                ),
                const SizedBox(height: 15),
                // const Text(
                //   'ADDRESS',
                //   style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                // ),
                // Container(
                //   child: Row(
                //     children: [
                //       Container(
                //         width: 300,
                //         child: CustomTextFormField(
                //             controller: controller, hintText: 'Enter Area'),
                //       ),
                //       const SizedBox(width: 10),
                //       Container(
                //         width: 300,
                //         child: CustomTextFormField(
                //             controller: controller, hintText: 'Enter City'),
                //       ),
                //     ],
                //   ),
                // ),
                CustomButton(onPressed: () {}, text: 'Book Appointment')
              ],
            ),
          ),
        ),
      ),
    );
  }
}
