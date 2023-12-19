// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pay_back_ledger.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class PayBackLedgerModelAdapter extends TypeAdapter<PayBackLedgerModel> {
  @override
  final int typeId = 11;

  @override
  PayBackLedgerModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return PayBackLedgerModel(
      ledgerId: fields[0] as String,
      payBackAmount: fields[1] as double,
    );
  }

  @override
  void write(BinaryWriter writer, PayBackLedgerModel obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.ledgerId)
      ..writeByte(1)
      ..write(obj.payBackAmount);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PayBackLedgerModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
