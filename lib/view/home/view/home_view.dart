import 'package:flutter/material.dart';
import 'package:heroapps_demo/product/widgets/icon/notification_bell.dart';
import 'package:heroapps_demo/product/constants/app_contants.dart';
import 'package:heroapps_demo/product/widgets/text/custom_hello_text.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {},
            icon: const NotificationBell(hasNotification: true),
          )
        ],
      ),
      body: ListView(
        padding: AppConstants.pagePadding,
        children: const [
          CustomHelloText(name: 'Sara Rose'),
        ],
      ),
    );
  }
}
