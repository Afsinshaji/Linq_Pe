// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pay_back_account.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class PayBackAccountModelAdapter extends TypeAdapter<PayBackAccountModel> {
  @override
  final int typeId = 10;

  @override
  PayBackAccountModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return PayBackAccountModel(
      splittingAccountId: fields[0] as String,
      splittedPrimaryAccountId: fields[1] as String,
    );
  }

  @override
  void write(BinaryWriter writer, PayBackAccountModel obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.splittingAccountId)
      ..writeByte(1)
      ..write(obj.splittedPrimaryAccountId);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PayBackAccountModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
