import 'package:flutter/material.dart';
import 'package:heroapps_demo/product/extensions/string_extensions.dart';
import 'package:heroapps_demo/view/profile/model/workout_model.dart';

class WorkoutCard extends StatelessWidget {
  const WorkoutCard({required this.workout, super.key});
  final Workout workout;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: InkWell(
        onTap: () {},
        child: Ink(
          height: 180,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            color: Colors.blueGrey[50],
            borderRadius: BorderRadius.circular(12),
            border: Border.all(
              color: Colors.blueGrey[100] ?? Colors.white,
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const Spacer(),
              Expanded(
                flex: 9,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 80,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.white,
                        border: Border.all(
                          color: Colors.blueGrey[100] ?? Colors.white,
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 12,
                          vertical: 8,
                        ),
                        child: Center(
                          child: Text(
                            workout.time,
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          workout.title,
                          style: const TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 22,
                          ),
                        ),
                        Text(
                          workout.subTitle,
                          style: const TextStyle(
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Icon(Icons.access_time_rounded),
                        const SizedBox(
                          width: 5,
                        ),
                        Text(
                          workout.duration,
                          style: const TextStyle(
                            fontWeight: FontWeight.w600,
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
              Expanded(
                flex: 6,
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Image.asset(
                    workout.image.imagePath,
                  ),
                ),
              ),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
