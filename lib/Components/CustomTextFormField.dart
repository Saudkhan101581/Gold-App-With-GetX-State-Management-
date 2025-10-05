import 'package:flutter/material.dart';

class Customtextformfield extends StatelessWidget {
  final double height;
  final IconData icon;
  final String hintText;
  final TextEditingController controller;
  Customtextformfield({
    super.key,
    this.height = 60,
    this.icon = Icons.add,
    required this.hintText,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: height,
      decoration: BoxDecoration(color: Colors.white),
      child: Row(
        children: [
          SizedBox(width: 10),
          Icon(icon, color: Colors.blue, size: 30),
          SizedBox(width: 12),
          Expanded(
            child: TextFormField(
              controller: controller,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: hintText,
                hintStyle: TextStyle(
                  color: Colors.blue,
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
              ),
              style: TextStyle(color: Colors.blue),
              cursorColor: Colors.blue,
            ),
          ),
        ],
      ),
    );
  }
}
