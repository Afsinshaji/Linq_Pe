// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transactions.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class TransactionsModelAdapter extends TypeAdapter<TransactionsModel> {
  @override
  final int typeId = 4;

  @override
  TransactionsModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return TransactionsModel(
      contactId: fields[0] as String,
      recievedAmt: fields[1] as double,
      payedAmt: fields[2] as double,
      balanceAmt: fields[3] as double,
      secondaryTransaction:
          (fields[4] as List?)?.cast<SecondaryTransactionsModel>(),
    );
  }

  @override
  void write(BinaryWriter writer, TransactionsModel obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.contactId)
      ..writeByte(1)
      ..write(obj.recievedAmt)
      ..writeByte(2)
      ..write(obj.payedAmt)
      ..writeByte(3)
      ..write(obj.balanceAmt)
      ..writeByte(4)
      ..write(obj.secondaryTransaction);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TransactionsModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
