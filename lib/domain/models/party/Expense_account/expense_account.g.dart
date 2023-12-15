// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'expense_account.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ExpenseAccountModelAdapter extends TypeAdapter<ExpenseAccountModel> {
  @override
  final int typeId = 6;

  @override
  ExpenseAccountModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ExpenseAccountModel(
      contactId: fields[0] as String,
      ledgerId: fields[1] as String,
    );
  }

  @override
  void write(BinaryWriter writer, ExpenseAccountModel obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.contactId)
      ..writeByte(1)
      ..write(obj.ledgerId);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ExpenseAccountModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
