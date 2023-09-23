import 'package:flutter/material.dart';
import 'package:heroapps_demo/product/widgets/card/exercise_card.dart';
import 'package:heroapps_demo/product/widgets/card/feature_card.dart';
import 'package:heroapps_demo/product/widgets/card/feeling_card.dart';
import 'package:heroapps_demo/product/widgets/card/menu_card.dart';
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
        elevation: 0,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const NotificationBell(hasNotification: true),
          )
        ],
      ),
      body: ListView(
        padding: AppConstants.pagePadding,
        children: [
          const CustomHelloText(name: 'Sara Rose'),
          const SizedBox(
            height: 20,
          ),
          const FeelingCard(
            feelingImages: AppConstants.feelingImages,
          ),
          const SizedBox(
            height: 20,
          ),
          const MenuCard(
            title: 'Feature',
            children: [
              FeatureCard(
                title: 'Positive vibes',
                content: 'Boost your mood with positive vibes',
                duratiton: '10',
                svg: 'passing_by.svg',
                color: Color.fromARGB(255, 37, 174, 103),
              ),
              FeatureCard(
                title: 'Positive vibes',
                content: 'Boost your mood with positive vibes',
                duratiton: '10',
                svg: 'passing_by.svg',
                color: Color.fromARGB(255, 206, 94, 206),
              ),
              FeatureCard(
                title: 'Positive vibes',
                content: 'Boost your mood with positive vibes',
                duratiton: '10',
                svg: 'passing_by.svg',
                color: Color.fromARGB(255, 155, 232, 101),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          MenuCard(
            title: 'Exercise',
            children: [
              ExerciseCard(
                exercises: AppConstants.exercises,
              )
            ],
          ),
        ],
      ),
    );
  }
}
