import 'package:flutter/material.dart';
import 'package:heroapps_demo/view/home/model/exercise_model.dart';
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

  static const List<String> feelingImages = [
    'love_face.png',
    'cool_face.png',
    'happy_face.png',
    'sad_face.png',
  ];

  static List<Exercise> exercises = [
    Exercise(
      path: 'relaxation_image.png',
      color: const Color.fromARGB(255, 236, 225, 252),
    ),
    Exercise(
      path: 'meditation_image.png',
      color: const Color.fromARGB(255, 255, 218, 243),
    ),
    Exercise(
      path: 'breathing_image.png',
      color: const Color.fromARGB(255, 251, 229, 210),
    ),
    Exercise(
      path: 'yoga_image.png',
      color: const Color(0xffDFF2FF),
    ),
  ];
}
