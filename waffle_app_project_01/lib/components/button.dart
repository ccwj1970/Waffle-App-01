import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String text;
  const MyButton({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Color.fromARGB(255, 162, 136, 127),
          borderRadius: BorderRadius.circular(40)),
      padding: EdgeInsets.all(20),
      // Row 左右：Get started & -->
      child: Row(
        // get started 置中
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Text
          Text(
            text,
            style: TextStyle(
                color: Colors.white, fontSize: 18, fontWeight: FontWeight.w600),
          ),
          const SizedBox(width: 10), // Text & Icon 距離
          // Icon
          Icon(Icons.arrow_forward, color: Colors.white),
        ],
      ),
    );
  }
}
