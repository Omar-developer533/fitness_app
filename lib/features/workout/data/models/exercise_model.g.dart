// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'exercise_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ExerciseModelAdapter extends TypeAdapter<ExerciseModel> {
  @override
  final int typeId = 1;

  @override
  ExerciseModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ExerciseModel(
      exerciseId: fields[0] as String?,
      name: fields[1] as String?,
      gifUrl: fields[2] as String?,
      targetMuscles: (fields[3] as List?)?.cast<String>(),
      bodyParts: (fields[4] as List?)?.cast<String>(),
      equipments: (fields[5] as List?)?.cast<String>(),
      secondaryMuscles: (fields[6] as List?)?.cast<String>(),
      instructions: (fields[7] as List?)?.cast<String>(),
    );
  }

  @override
  void write(BinaryWriter writer, ExerciseModel obj) {
    writer
      ..writeByte(8)
      ..writeByte(0)
      ..write(obj.exerciseId)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.gifUrl)
      ..writeByte(3)
      ..write(obj.targetMuscles)
      ..writeByte(4)
      ..write(obj.bodyParts)
      ..writeByte(5)
      ..write(obj.equipments)
      ..writeByte(6)
      ..write(obj.secondaryMuscles)
      ..writeByte(7)
      ..write(obj.instructions);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ExerciseModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
