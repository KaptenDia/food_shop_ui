import 'package:flutter/material.dart';
import 'package:food_shop_ui/core.dart';
import 'package:google_fonts/google_fonts.dart';

class IntroView extends StatelessWidget {
  const IntroView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const SizedBox(
              height: 24,
            ),
            // Shop Name
            Text(
              'Food Maniac',
              style: GoogleFonts.dmSerifDisplay(
                fontSize: 28,
                color: Colors.white,
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            // Icon
            Padding(
              padding: const EdgeInsets.all(50),
              child: Image.asset(
                'assets/images/4.png',
              ),
            ),
            // Tittle
            Text(
              'The Amazing Food That Make Your Body Happy',
              style: GoogleFonts.dmSerifDisplay(
                fontSize: 28,
                color: Colors.white,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            // Subtittle
            Text(
              'Feel the taste of the amazing food from another space that unbeliveable!',
              style: TextStyle(
                height: 2,
                color: Colors.grey[200],
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            // Get Started Button
            MyButton(
              text: "Get Started",
              onTap: () {
                // Go To Menu Page
                Get.to(const HomeView());
              },
            ),
          ],
        ),
      ),
    );
  }
}
