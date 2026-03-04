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
