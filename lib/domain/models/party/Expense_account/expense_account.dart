import 'package:hive/hive.dart';

part 'expense_account.g.dart';

@HiveType(typeId: 6)
class ExpenseAccountModel {
  @HiveField(0)
  final String contactId;
  @HiveField(1)
  final String ledgerId;
  ExpenseAccountModel({required this.contactId,required  this.ledgerId});
}

class ExpenseAccountModelBox {
  static Box<ExpenseAccountModel>? _getbox;
  static Box<ExpenseAccountModel> getInstance() {
    return _getbox ??= Hive.box('ExpenseAccountModelBox');
  }
}
