// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'estabelecimento.model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class EstabelecimentoModelAdapter extends TypeAdapter<EstabelecimentoModel> {
  @override
  final typeId = 1;

  @override
  EstabelecimentoModel read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return EstabelecimentoModel(
      id: fields[0] as int,
      nome: fields[1] as String,
      descricao: fields[2] as String,
      logo: fields[3] as String,
      logradouro: fields[4] as String,
      logradouro_numero: fields[5] as String,
      logradouro_cep: fields[6] as String,
      logradouro_complemento: fields[9] as String,
      bairro: fields[10] as String,
      cidade: fields[7] as String,
      estado: fields[8] as String,
      telefone: fields[11] as String,
    );
  }

  @override
  void write(BinaryWriter writer, EstabelecimentoModel obj) {
    writer
      ..writeByte(12)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.nome)
      ..writeByte(2)
      ..write(obj.descricao)
      ..writeByte(3)
      ..write(obj.logo)
      ..writeByte(4)
      ..write(obj.logradouro)
      ..writeByte(5)
      ..write(obj.logradouro_numero)
      ..writeByte(6)
      ..write(obj.logradouro_cep)
      ..writeByte(7)
      ..write(obj.cidade)
      ..writeByte(8)
      ..write(obj.estado)
      ..writeByte(9)
      ..write(obj.logradouro_complemento)
      ..writeByte(10)
      ..write(obj.bairro)
      ..writeByte(11)
      ..write(obj.telefone);
  }
}
