import 'package:flutter/material.dart';

class CustomHelloText extends StatelessWidget {
  const CustomHelloText({required this.name, super.key});
  final String name;

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: 'Hello, ',
            style: TextStyle(
              color: Colors.brown.shade700,
              fontSize: 30,
            ),
          ),
          TextSpan(
            text: name,
            style: TextStyle(
              color: Colors.brown.shade700,
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          )
        ],
      ),
    );
  }
}
