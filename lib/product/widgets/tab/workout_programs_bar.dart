import 'package:flutter/material.dart';
import 'package:heroapps_demo/product/widgets/card/workout_card.dart';
import 'package:heroapps_demo/view/profile/model/workout_model.dart';

class WorkoutProgramsBar extends StatefulWidget {
  const WorkoutProgramsBar({super.key});

  @override
  State<WorkoutProgramsBar> createState() => _WorkoutProgramsBarState();
}

class _WorkoutProgramsBarState extends State<WorkoutProgramsBar>
    with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 4, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Workout Programs'),
        automaticallyImplyLeading: false,
        centerTitle: false,
        titleTextStyle: const TextStyle(
          fontSize: 18,
          color: Colors.black,
          fontWeight: FontWeight.bold,
        ),
        bottom: TabBar(
          controller: _tabController,
          tabs: const [
            Tab(
              text: 'All Type',
            ),
            Tab(
              text: 'Full Body',
            ),
            Tab(
              text: 'Upper',
            ),
            Tab(
              text: 'Lower',
            ),
          ],
          labelPadding: const EdgeInsets.all(0),
          indicatorSize: TabBarIndicatorSize.tab,
          labelColor: Colors.deepPurple.shade900,
          indicatorColor: Colors.deepPurple.shade900,
          splashFactory: NoSplash.splashFactory,
        ),
      ),
      body: TabBarView(controller: _tabController, children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 16),
          child: ListView(
            children: [
              WorkoutCard(
                workout: Workout(
                  title: 'Morning Yoga',
                  time: '7 days',
                  subTitle: 'Improve mental focus.',
                  duration: '30 mins',
                  image: 'yoga_picture.png',
                ),
              ),
              WorkoutCard(
                workout: Workout(
                  title: 'Plank Exercise',
                  time: '3 days',
                  subTitle: 'Improve postur and stablity.',
                  duration: '30 mins',
                  image: 'plank_picture.png',
                ),
              ),
            ],
          ),
        ),
        const Placeholder(),
        const Placeholder(),
        const Placeholder(),
      ]),
    );
  }
}
