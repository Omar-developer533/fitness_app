import 'package:fitness_app/features/tracking/presentation/views/widgets/workout_card_edit.dart';
import 'package:flutter/material.dart';

class WorkoutCardListView extends StatelessWidget {
  const WorkoutCardListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: 10,
      itemBuilder: (context, index) {
        return const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: WorkoutCardEdit(title: 'Push ups'),
        );
      },
    );
  }
}
