import 'package:flutter/material.dart';
import 'package:heroapps_demo/product/extensions/string_extensions.dart';
import 'package:heroapps_demo/product/widgets/icon/notification_bell.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({required this.name, required this.image, super.key});
  final String name;
  final String image;

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
     
    );
  }

  AppBar _appBar() {
    return AppBar(
      leading: Transform.translate(
        offset: const Offset(16, 0),
        child: CircleAvatar(
          backgroundImage: AssetImage(
            widget.image.imagePath,
          ),
        ),
      ),
      titleSpacing: 0,
      title: Transform.translate(
        offset: const Offset(-15, 0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Hello, ${widget.name}',
              style: const TextStyle(fontSize: 18),
            ),
            const Text(
              'Ready to workout?',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
      actions: [
        NotificationBell(
          hasNotification: true,
          onPressed: () {},
        )
      ],
    );
  }
}
