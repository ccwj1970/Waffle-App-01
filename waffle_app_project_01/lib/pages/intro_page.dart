import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart'; // 版本： google_fonts: ^6.2.1
import 'package:waffle_app_project_01/components/button.dart';


class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(143, 255, 192, 171),
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start, // 左右
          mainAxisAlignment: MainAxisAlignment.spaceEvenly, // 上下
          children: [
            const SizedBox(height: 20),

            // shop name
            Text(
              "WAFFLE",
              style: GoogleFonts.dmSerifDisplay(
                fontSize: 32,
                color: Color.fromARGB(255, 245, 233, 209),
                letterSpacing: 6,
              ),
            ),

            const SizedBox(height: 0),
            // icon

            Padding(
              padding: const EdgeInsets.all(35.0),
              child: Image.asset('lib/images/waffle copy 2.png'),
            ),
            const SizedBox(height: 0),

            // title
            Text(
              "THE TASTE OF BELGIAN FOOD",
              style: GoogleFonts.dmSerifDisplay(
                fontSize: 40,
                color: Color.fromARGB(255, 245, 233, 209),
                letterSpacing: 4.5,
              ),
            ),
            const SizedBox(height: 0),

            // subtitle
            Text(
              "Feel the taste of the most popular Belgian dessert    from anywhere and anytime",
              style: TextStyle(
                color: Color.fromARGB(255, 241, 240, 227),
                height: 2,
              ),
            ),
            const SizedBox(height: 20),

            // get started button

            MyButton(text: "Get Started")
          ],
        ),
      ),
    );
  }
}
