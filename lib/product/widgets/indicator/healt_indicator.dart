import 'package:flutter/material.dart';

class HealtIndicator extends StatelessWidget {
  const HealtIndicator({
    super.key,
    required this.icon,
    required this.title,
    required this.value,
    required this.valueIndicator,
  });
  final IconData icon;
  final String title;
  final String value;
  final String valueIndicator;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Row(
          children: [
            Icon(
              icon,
              color: Colors.deepPurple.shade400,
            ),
            Text(
              title,
              style: const TextStyle(
                color: Colors.black,
              ),
            )
          ],
        ),
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: value,
                style: const TextStyle(
                  fontSize: 25,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextSpan(
                text: valueIndicator,
                style: const TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
