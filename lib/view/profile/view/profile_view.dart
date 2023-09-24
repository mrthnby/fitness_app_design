import 'package:flutter/material.dart';
import 'package:heroapps_demo/product/constants/app_contants.dart';
import 'package:heroapps_demo/product/extensions/string_extensions.dart';
import 'package:heroapps_demo/product/widgets/icon/notification_bell.dart';
import 'package:heroapps_demo/product/widgets/indicator/healt_indicator.dart';
import 'package:heroapps_demo/product/widgets/tab/workout_programs_bar.dart';

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
      body: Padding(
        padding: AppConstants.pagePadding,
        child: Column(
          children: [
            _healtMonitor(),
            const SizedBox(
              height: 25,
            ),
            const Expanded(
              child: WorkoutProgramsBar(),
            )
          ],
        ),
      ),
    );
  }

  Padding _healtMonitor() {
    return Padding(
      padding: const EdgeInsets.only(
        top: 20,
      ),
      child: Container(
        height: 100,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.grey.shade200,
        ),
        child: const Padding(
          padding: EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              HealtIndicator(
                icon: Icons.favorite_border_rounded,
                title: 'Heart Rate',
                value: '81',
                valueIndicator: 'BPM',
              ),
              VerticalDivider(
                color: Colors.grey,
                thickness: 1,
                endIndent: 10,
                indent: 10,
              ),
              HealtIndicator(
                  icon: Icons.format_list_bulleted_rounded,
                  title: 'To-do',
                  value: '32.5',
                  valueIndicator: '%'),
              VerticalDivider(
                color: Colors.grey,
                thickness: 1,
                endIndent: 10,
                indent: 10,
              ),
              HealtIndicator(
                icon: Icons.whatshot_rounded,
                title: 'Calo',
                value: '1000',
                valueIndicator: 'Cal',
              )
            ],
          ),
        ),
      ),
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
