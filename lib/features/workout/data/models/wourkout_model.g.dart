// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wourkout_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class WourkoutModelAdapter extends TypeAdapter<WourkoutModel> {
  @override
  final int typeId = 0;

  @override
  WourkoutModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return WourkoutModel(
      type: fields[0] as String?,
      name: fields[1] as String?,
      sets: fields[2] as int?,
      reps: fields[3] as int?,
      restTimer: fields[4] as int?,
      weight: fields[5] as int?,
    );
  }

  @override
  void write(BinaryWriter writer, WourkoutModel obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.type)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.sets)
      ..writeByte(3)
      ..write(obj.reps)
      ..writeByte(4)
      ..write(obj.restTimer)
      ..writeByte(5)
      ..write(obj.weight);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is WourkoutModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
