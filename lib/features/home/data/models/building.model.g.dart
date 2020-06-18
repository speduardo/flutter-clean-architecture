// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'building.model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class BuildingModelAdapter extends TypeAdapter<BuildingModel> {
  @override
  final typeId = 1;

  @override
  BuildingModel read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return BuildingModel(
      name: fields[1] as String,
      description: fields[2] as String,
      image: fields[3] as String,
      address: fields[4] as String,
      addressNumber: fields[5] as String,
      addressCode: fields[6] as String,
      addressComplement: fields[9] as String,
      neighborhood: fields[10] as String,
      city: fields[7] as String,
      state: fields[8] as String,
      phone: fields[11] as String,
      categoryModel: fields[12] as dynamic,
    )..id = fields[0] as int;
  }

  @override
  void write(BinaryWriter writer, BuildingModel obj) {
    writer
      ..writeByte(13)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.description)
      ..writeByte(3)
      ..write(obj.image)
      ..writeByte(4)
      ..write(obj.address)
      ..writeByte(5)
      ..write(obj.addressNumber)
      ..writeByte(6)
      ..write(obj.addressCode)
      ..writeByte(7)
      ..write(obj.city)
      ..writeByte(8)
      ..write(obj.state)
      ..writeByte(9)
      ..write(obj.addressComplement)
      ..writeByte(10)
      ..write(obj.neighborhood)
      ..writeByte(11)
      ..write(obj.phone)
      ..writeByte(12)
      ..write(obj.categoryModel)
      ..writeByte(0)
      ..write(obj.id);
  }
}
