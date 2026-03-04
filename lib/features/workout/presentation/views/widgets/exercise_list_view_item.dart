import 'package:cached_network_image/cached_network_image.dart';
import 'package:fitness_app/constants.dart';
import 'package:fitness_app/core/utls/styles.dart';
import 'package:fitness_app/features/workout/data/models/exercise_model.dart';
import 'package:flutter/material.dart';

class ExerciseListViewItem extends StatelessWidget {
  const ExerciseListViewItem({super.key, required this.exercise});
  final ExerciseModel exercise;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        gradient: RadialGradient(
          radius: 1,
          center: const Alignment(0, -1.6),

          colors: [
            const Color(0xffEA8945),
            const Color(0xff161512).withValues(alpha: 0.71),
          ],
        ),
      ),
      child: ListTile(
        contentPadding: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
        leading: CachedNetworkImage(
          imageUrl:
              exercise.gifUrl ??
              'https://static.exercisedb.dev/media/5MRH8H2.gif',
          placeholder: (context, url) =>
              CircularProgressIndicator(color: buttonColorEnd),
          errorWidget: (context, url, error) => Icon(Icons.error),
          imageBuilder: (context, imageProvider) {
            return Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                color: Colors.transparent,
                borderRadius: BorderRadius.circular(12),
                image: DecorationImage(image: imageProvider, fit: BoxFit.fill),
              ),
            );
          },
        ),
        title: Text(
          exercise.name!,
          style: Styles.semiBoldTextStyle16,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        subtitle: Padding(
          padding: const EdgeInsets.only(top: 5.0),
          child: Text(exercise.targetMuscles![0]),
        ),
        trailing: IconButton(onPressed: () {}, icon: Icon(Icons.favorite)),
      ),
    );
  }
}
