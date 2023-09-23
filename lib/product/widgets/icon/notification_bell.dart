import 'package:flutter/material.dart';

class NotificationBell extends StatelessWidget {
  const NotificationBell(
      {required this.hasNotification, required this.onPressed, super.key});
  final bool hasNotification;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed,
      icon: Stack(
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
      ),
    );
  }
}
