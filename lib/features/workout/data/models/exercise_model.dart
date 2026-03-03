class ExerciseModel {
  String? exerciseId;
  String? name;
  String? gifUrl;
  List<String>? targetMuscles;
  List<String>? bodyParts;
  List<String>? equipments;
  List<String>? secondaryMuscles;
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
    targetMuscles: json['targetMuscles'] as List<String>?,
    bodyParts: json['bodyParts'] as List<String>?,
    equipments: json['equipments'] as List<String>?,
    secondaryMuscles: json['secondaryMuscles'] as List<String>?,
    instructions: json['instructions'] as List<String>?,
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
