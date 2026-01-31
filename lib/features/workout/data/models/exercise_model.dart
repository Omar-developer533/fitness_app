import 'package:hive/hive.dart';
part 'exercise_model.g.dart';

@HiveType(typeId: 0)
class ExerciseModel extends HiveObject {
  @HiveField(0)
  String? type;
  @HiveField(1)
  String? name;
  @HiveField(2)
  int? sets;
  @HiveField(3)
  int? reps;
  @HiveField(4)
  int? restTimer;
  @HiveField(5)
  int? weight;

  ExerciseModel({
    this.type,
    this.name,
    this.sets,
    this.reps,
    this.restTimer,
    this.weight,
  });
}
