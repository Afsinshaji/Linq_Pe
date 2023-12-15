// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'party_account_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class PartyAccountsModelAdapter extends TypeAdapter<PartyAccountsModel> {
  @override
  final int typeId = 4;

  @override
  PartyAccountsModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return PartyAccountsModel(
      ledgerId: fields[5] as String,
      contactId: fields[0] as String,
      recievedAmt: fields[1] as double,
      payedAmt: fields[2] as double,
      balanceAmt: fields[3] as double,
      transactionList: (fields[4] as List?)?.cast<TransactionModel>(),
    );
  }

  @override
  void write(BinaryWriter writer, PartyAccountsModel obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.contactId)
      ..writeByte(1)
      ..write(obj.recievedAmt)
      ..writeByte(2)
      ..write(obj.payedAmt)
      ..writeByte(3)
      ..write(obj.balanceAmt)
      ..writeByte(4)
      ..write(obj.transactionList)
      ..writeByte(5)
      ..write(obj.ledgerId);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PartyAccountsModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
