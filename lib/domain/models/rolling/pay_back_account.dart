import 'package:hive/hive.dart';

part 'pay_back_account.g.dart';

@HiveType(typeId: 10)
class PayBackAccountModel {
  @HiveField(0)
  final String splittingAccountId;

  @HiveField(1)
  final String splittedPrimaryAccountId;

  @HiveField(2)
  final double payBackAmount;

  PayBackAccountModel({
    required this.payBackAmount,
    required this.splittingAccountId,
    required this.splittedPrimaryAccountId,
  });
}

class PayBackAccountBox {
  static Box<PayBackAccountModel>? _getbox;
  static Box<PayBackAccountModel> getInstance() {
    return _getbox ??= Hive.box('PayBackAccountBox');
  }
}
