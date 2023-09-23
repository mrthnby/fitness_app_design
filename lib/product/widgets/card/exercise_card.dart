import 'package:flutter/material.dart';
import 'package:heroapps_demo/product/extensions/string_extensions.dart';
import 'package:heroapps_demo/view/home/model/exercise_model.dart';

class ExerciseCard extends StatelessWidget {
  const ExerciseCard({required this.exercises, super.key});
  final List<Exercise> exercises;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 2.5,
          mainAxisSpacing: 15,
          crossAxisSpacing: 30),
      itemCount: exercises.length,
      itemBuilder: (context, index) => _singleExerciseCard(
       exercise: exercises[index],
      ),
    );
  }
}

class _singleExerciseCard extends StatelessWidget {
  const _singleExerciseCard({required this.exercise});
  final Exercise exercise;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      decoration: BoxDecoration(
        color: exercise.color,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Expanded(
        child: ListTile(
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          leading: Image.asset(
            exercise.path.imagePath,
            height: 30,
            width: 30,
          ),
          title: Text(
            exercise.path.imageMood.capitalize,
            textAlign: TextAlign.start,
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
