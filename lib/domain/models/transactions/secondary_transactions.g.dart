// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'secondary_transactions.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class SecondaryTransactionsModelAdapter
    extends TypeAdapter<SecondaryTransactionsModel> {
  @override
  final int typeId = 2;

  @override
  SecondaryTransactionsModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return SecondaryTransactionsModel(
      toContactId: fields[0] as String,
      payedAmt: fields[4] as int,
      balanceAmt: fields[3] as int,
      isPayed: fields[2] as bool,
      givenAmt: fields[1] as int,
      secondaryTransaction:
          (fields[5] as List?)?.cast<SecondaryTransactionsModel>(),
      fromContactId: fields[6] as String,
    );
  }

  @override
  void write(BinaryWriter writer, SecondaryTransactionsModel obj) {
    writer
      ..writeByte(7)
      ..writeByte(0)
      ..write(obj.toContactId)
      ..writeByte(1)
      ..write(obj.givenAmt)
      ..writeByte(2)
      ..write(obj.isPayed)
      ..writeByte(3)
      ..write(obj.balanceAmt)
      ..writeByte(4)
      ..write(obj.payedAmt)
      ..writeByte(5)
      ..write(obj.secondaryTransaction)
      ..writeByte(6)
      ..write(obj.fromContactId);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SecondaryTransactionsModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
