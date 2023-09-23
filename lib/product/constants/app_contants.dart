import 'package:flutter/material.dart';
import 'package:heroapps_demo/view/home/view/home_view.dart';
import 'package:heroapps_demo/view/profile/view/profile_view.dart';

abstract class AppConstants {
  static const List<Widget> pages = [
    HomeView(),
    ProfileView(),
    HomeView(),
    ProfileView(),
  ];

  static const EdgeInsets pagePadding = EdgeInsets.all(12);
}
