import 'package:hive/hive.dart';

part 'customer.g.dart';

@HiveType(typeId: 1)
class CustomerModel {
  @HiveField(0)
  final String contactId;

  CustomerModel({required this.contactId});
}

class CustomerBox {
  static Box<CustomerModel>? _getbox;
  static Box<CustomerModel> getInstance() {
    return _getbox ??= Hive.box('CustomerBox');
  }
}
