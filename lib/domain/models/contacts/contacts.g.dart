// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contacts.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ContactsModelAdapter extends TypeAdapter<ContactsModel> {
  @override
  final int typeId = 0;

  @override
  ContactsModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ContactsModel(
      lastTimeOfTransfer: fields[8] as DateTime?,
      contactId: fields[4] as String,
      displayName: fields[0] as String,
      contactNumber: fields[1] as String,
      blanceAmount: fields[5] as double?,
      payedAmount: fields[6] as double?,
      receivedAmount: fields[7] as double?,
      avatar: fields[2] as Uint8List?,
      initails: fields[3] as String,
    );
  }

  @override
  void write(BinaryWriter writer, ContactsModel obj) {
    writer
      ..writeByte(9)
      ..writeByte(0)
      ..write(obj.displayName)
      ..writeByte(1)
      ..write(obj.contactNumber)
      ..writeByte(2)
      ..write(obj.avatar)
      ..writeByte(3)
      ..write(obj.initails)
      ..writeByte(4)
      ..write(obj.contactId)
      ..writeByte(5)
      ..write(obj.blanceAmount)
      ..writeByte(6)
      ..write(obj.payedAmount)
      ..writeByte(7)
      ..write(obj.receivedAmount)
      ..writeByte(8)
      ..write(obj.lastTimeOfTransfer);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ContactsModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
