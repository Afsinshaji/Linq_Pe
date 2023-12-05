import 'dart:typed_data';

import 'package:hive/hive.dart';

part 'contacts.g.dart';

@HiveType(typeId: 0)
class ContactsModel {
  @HiveField(0)
  final String displayName;
  @HiveField(1)
  final String contactNumber;
  @HiveField(2)
  final Uint8List? avatar;
  @HiveField(3)
  final String initails;
  @HiveField(4)
  final String contactId;
  @HiveField(5)
  final double? blanceAmount;
  @HiveField(6)
  final double? payedAmount;
  @HiveField(7)
  final double? receivedAmount;
  @HiveField(8)
  final DateTime? lastTimeOfTransfer;
  ContactsModel({
    this.lastTimeOfTransfer,
    required this.contactId,
    required this.displayName,
    required this.contactNumber,
    this.blanceAmount,
    this.payedAmount,
    this.receivedAmount,
    this.avatar,
    required this.initails,
  });
}

class ContactsBox {
  static Box<ContactsModel>? _getbox;
  static Box<ContactsModel> getInstance() {
    return _getbox ??= Hive.box('ContactsBox');
  }
}
