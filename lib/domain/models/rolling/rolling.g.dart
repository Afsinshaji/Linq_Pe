// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rolling.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class RollingAccountsModelAdapter extends TypeAdapter<RollingAccountsModel> {
  @override
  final int typeId = 9;

  @override
  RollingAccountsModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return RollingAccountsModel(
      ledgerId: fields[6] as String,
      payBackAccountList: (fields[5] as List).cast<PayBackAccountModel>(),
      rollingAccountContactId: fields[0] as String,
      recievedRollingAmt: fields[1] as double,
      payedBackAmt: fields[2] as double,
      balanceToPayAmt: fields[3] as double,
      transactionList: (fields[4] as List?)?.cast<TransactionModel>(),
    );
  }

  @override
  void write(BinaryWriter writer, RollingAccountsModel obj) {
    writer
      ..writeByte(7)
      ..writeByte(0)
      ..write(obj.rollingAccountContactId)
      ..writeByte(1)
      ..write(obj.recievedRollingAmt)
      ..writeByte(2)
      ..write(obj.payedBackAmt)
      ..writeByte(3)
      ..write(obj.balanceToPayAmt)
      ..writeByte(4)
      ..write(obj.transactionList)
      ..writeByte(5)
      ..write(obj.payBackAccountList)
      ..writeByte(6)
      ..write(obj.ledgerId);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is RollingAccountsModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
