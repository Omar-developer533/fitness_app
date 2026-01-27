
import 'package:fitness_app/core/utls/styles.dart';
import 'package:fitness_app/features/workout/presentation/views/widgets/create_exercise_view_body.dart';
import 'package:flutter/material.dart';


class WorkoutItem extends StatefulWidget {
  const WorkoutItem({
    super.key,
    required this.boxname,
    required this.unit,
    required this.number,
  });
  final String boxname, unit;
  final int number;

  @override
  State<WorkoutItem> createState() => _WorkoutItemState();
}
class _WorkoutItemState extends State<WorkoutItem> {
  late int count;
  @override
  void initState() {
    count = widget.number;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        gradient: RadialGradient(
          radius: 1,
          center: const Alignment(0, -1.9),

          colors: [
            const Color(0xffEA8945),
            const Color(0xff161512).withValues(alpha: 0.71),
          ],
        ),
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.boxname,

                  style: Styles.mediumTextStyle14.copyWith(
                    color: const Color(0xffA1A1AA),
                  ),
                ),

                FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Text(
                    '$count ${widget.unit}',
                    style: Styles.semiBoldTextStyle24,
                  ),
                ),
              ],
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconButton(
                onPressed: () {
                  count++;
                  setState(() {});
                },
                icon: const Icon(
                  Icons.arrow_drop_up,
                  size: 24,
                  color: Color(0xffA1A1AA),
                ),
              ),
              IconButton(
                onPressed: () {
                  count--;
                  setState(() {});
                },
                icon: const Icon(
                  Icons.arrow_drop_down,
                  size: 24,
                  color: Color(0xffA1A1AA),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
