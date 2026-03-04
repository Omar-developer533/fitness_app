import 'package:hive/hive.dart';
part 'exercise_model.g.dart';
@HiveType(typeId: 1)
class ExerciseModel extends HiveObject {
  @HiveField(0)
  String? exerciseId;
  @HiveField(1)
  String? name;
  @HiveField(2)
  String? gifUrl;
  @HiveField(3)
  List<String>? targetMuscles;
  @HiveField(4)
  List<String>? bodyParts;
  @HiveField(5)
  List<String>? equipments;
  @HiveField(6)
  List<String>? secondaryMuscles;
  @HiveField(7)
  List<String>? instructions;

  ExerciseModel({
    this.exerciseId,
    this.name,
    this.gifUrl,
    this.targetMuscles,
    this.bodyParts,
    this.equipments,
    this.secondaryMuscles,
    this.instructions,
  });

  factory ExerciseModel.fromJson(Map<String, dynamic> json) => ExerciseModel(
    exerciseId: json['exerciseId'] as String?,
    name: json['name'] as String?,
    gifUrl: json['gifUrl'] as String?,
    targetMuscles: (json['targetMuscles'] as List<dynamic>?)
        ?.map((e) => e.toString())
        .toList(),
    bodyParts: (json['bodyParts'] as List<dynamic>?)
        ?.map((e) => e.toString())
        .toList(),
    equipments: (json['equipments'] as List<dynamic>?)
        ?.map((e) => e.toString())
        .toList(),
    secondaryMuscles: (json['secondaryMuscles'] as List<dynamic>?)
        ?.map((e) => e.toString())
        .toList(),
    instructions: (json['instructions'] as List<dynamic>?)
        ?.map((e) => e.toString())
        .toList(),
  );

  Map<String, dynamic> toJson() => {
    'exerciseId': exerciseId,
    'name': name,
    'gifUrl': gifUrl,
    'targetMuscles': targetMuscles,
    'bodyParts': bodyParts,
    'equipments': equipments,
    'secondaryMuscles': secondaryMuscles,
    'instructions': instructions,
  };
}
