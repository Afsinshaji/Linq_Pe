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
      isSecondaryPay: fields[17] as bool,
      primaryAccountId: fields[16] as String,
      isGive: fields[15] as bool,
      isGet: fields[14] as bool,
      isAddBalance: fields[13] as bool,
      isSplit: fields[12] as bool,
      id: fields[11] as String,
      transactionDetails: fields[10] as String?,
      transactionId: fields[9] as String?,
      transactionType: fields[7] as TransactionType,
      timeOfTrans: fields[6] as DateTime,
      toContactId: fields[0] as String,
      payedAmt: fields[4] as double,
      balanceAmt: fields[3] as double,
      isPayed: fields[2] as bool,
      givenAmt: fields[1] as double,
      fromContactId: fields[5] as String,
      billImage: fields[8] as Uint8List?,
    );
  }

  @override
  void write(BinaryWriter writer, SecondaryTransactionsModel obj) {
    writer
      ..writeByte(18)
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
      ..write(obj.fromContactId)
      ..writeByte(6)
      ..write(obj.timeOfTrans)
      ..writeByte(7)
      ..write(obj.transactionType)
      ..writeByte(8)
      ..write(obj.billImage)
      ..writeByte(9)
      ..write(obj.transactionId)
      ..writeByte(10)
      ..write(obj.transactionDetails)
      ..writeByte(11)
      ..write(obj.id)
      ..writeByte(12)
      ..write(obj.isSplit)
      ..writeByte(13)
      ..write(obj.isAddBalance)
      ..writeByte(14)
      ..write(obj.isGet)
      ..writeByte(15)
      ..write(obj.isGive)
      ..writeByte(16)
      ..write(obj.primaryAccountId)
      ..writeByte(17)
      ..write(obj.isSecondaryPay);
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
