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
      transactionDetails: fields[11] as String?,
      transactionId: fields[10] as String?,
      transactionType: fields[8] as TransactionType,
      timeOfTrans: fields[7] as DateTime,
      toContactId: fields[0] as String,
      payedAmt: fields[4] as double,
      balanceAmt: fields[3] as double,
      isPayed: fields[2] as bool,
      givenAmt: fields[1] as double,
      secondaryTransaction:
          (fields[5] as List?)?.cast<SecondaryTransactionsModel>(),
      fromContactId: fields[6] as String,
      billImage: fields[9] as File?,
    );
  }

  @override
  void write(BinaryWriter writer, SecondaryTransactionsModel obj) {
    writer
      ..writeByte(12)
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
      ..write(obj.fromContactId)
      ..writeByte(7)
      ..write(obj.timeOfTrans)
      ..writeByte(8)
      ..write(obj.transactionType)
      ..writeByte(9)
      ..write(obj.billImage)
      ..writeByte(10)
      ..write(obj.transactionId)
      ..writeByte(11)
      ..write(obj.transactionDetails);
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

class TransactionTypeAdapter extends TypeAdapter<TransactionType> {
  @override
  final int typeId = 3;

  @override
  TransactionType read(BinaryReader reader) {
    switch (reader.readByte()) {
      case 0:
        return TransactionType.cash;
      case 1:
        return TransactionType.bank;
      case 2:
        return TransactionType.wallet;
      default:
        return TransactionType.cash;
    }
  }

  @override
  void write(BinaryWriter writer, TransactionType obj) {
    switch (obj) {
      case TransactionType.cash:
        writer.writeByte(0);
        break;
      case TransactionType.bank:
        writer.writeByte(1);
        break;
      case TransactionType.wallet:
        writer.writeByte(2);
        break;
    }
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TransactionTypeAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
