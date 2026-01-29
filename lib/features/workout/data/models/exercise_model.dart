import 'package:hive/hive.dart';
part 'exercise_model.g.dart';
@HiveType(typeId: 0)
class ExerciseModel extends HiveObject {
  @HiveField(0)
  final String type;
  @HiveField(1)
  final String name;
  @HiveField(2)
  final int sets;
  @HiveField(3)
  final int reps;
  @HiveField(4)
  final int restTimer;
  @HiveField(5)
  final double weight;

  ExerciseModel({
    required this.type,
    required this.name,
    required this.sets,
    required this.reps,
    required this.restTimer,
    required this.weight,
  });
}
