import 'package:flutter/material.dart';

class NotificationBell extends StatelessWidget {
  const NotificationBell({required this.hasNotification, super.key});
  final bool hasNotification;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const Icon(
          Icons.notifications_outlined,
          size: 30,
        ),
        hasNotification
            ? const Positioned(
                right: 3,
                top: 3,
                child: Icon(
                  Icons.brightness_1,
                  size: 10.0,
                  color: Colors.redAccent,
                ),
              )
            : const SizedBox.shrink()
      ],
    );
  }
}
