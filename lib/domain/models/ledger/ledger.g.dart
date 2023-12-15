// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ledger.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class LedgerModelAdapter extends TypeAdapter<LedgerModel> {
  @override
  final int typeId = 8;

  @override
  LedgerModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return LedgerModel(
      ledgerName: fields[0] as String,
      ledgerId: fields[1] as String,
      totalBlanceAmount: fields[2] as double?,
      totalPayedAmount: fields[3] as double?,
    );
  }

  @override
  void write(BinaryWriter writer, LedgerModel obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.ledgerName)
      ..writeByte(1)
      ..write(obj.ledgerId)
      ..writeByte(2)
      ..write(obj.totalBlanceAmount)
      ..writeByte(3)
      ..write(obj.totalPayedAmount);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is LedgerModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
