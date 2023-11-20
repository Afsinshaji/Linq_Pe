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

  ContactsModel( {required this.contactId,
    required this.displayName,
    required this.contactNumber,
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
