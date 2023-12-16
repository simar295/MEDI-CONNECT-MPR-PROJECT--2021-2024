import 'package:flutter/material.dart';

class CustomTextBox extends StatelessWidget {
  const CustomTextBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      decoration: BoxDecoration(
          color: Colors.grey.shade200, borderRadius: BorderRadius.circular(50)),
      child: TextField(
        style: TextStyle(color: const Color.fromARGB(255, 0, 0, 0)),
        decoration: InputDecoration(
            suffixIcon: Icon(Icons.search, color: Color(0xFF5856d6)),
            border: InputBorder.none,
            hintText: "     Search for service",
            hintStyle: TextStyle(
              color: Color.fromARGB(255, 160, 160, 160),
              fontSize: 17,
            )),
      ),
    );
  }
}
