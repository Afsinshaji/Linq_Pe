// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'splitted_accounts.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class SplittedAccountsModelAdapter extends TypeAdapter<SplittedAccountsModel> {
  @override
  final int typeId = 7;

  @override
  SplittedAccountsModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return SplittedAccountsModel(
      ledgerId: fields[6] as String,
      primaryAccountContactId: fields[5] as String,
      splittedAccountContactId: fields[0] as String,
      recievedAmt: fields[1] as double,
      payedAmt: fields[2] as double,
      balanceAmt: fields[3] as double,
      transactionList: (fields[4] as List?)?.cast<TransactionModel>(),
    );
  }

  @override
  void write(BinaryWriter writer, SplittedAccountsModel obj) {
    writer
      ..writeByte(7)
      ..writeByte(0)
      ..write(obj.splittedAccountContactId)
      ..writeByte(1)
      ..write(obj.recievedAmt)
      ..writeByte(2)
      ..write(obj.payedAmt)
      ..writeByte(3)
      ..write(obj.balanceAmt)
      ..writeByte(4)
      ..write(obj.transactionList)
      ..writeByte(5)
      ..write(obj.primaryAccountContactId)
      ..writeByte(6)
      ..write(obj.ledgerId);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SplittedAccountsModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
