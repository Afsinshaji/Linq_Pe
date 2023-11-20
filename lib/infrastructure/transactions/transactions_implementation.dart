import 'package:hive/hive.dart';
import 'package:linq_pe/domain/models/transactions/secondary_transactions.dart';
import 'package:linq_pe/domain/models/transactions/transactions.dart';
import 'package:linq_pe/domain/repositories/transactions/transactions_repository.dart';

class TransactionsImplementation extends TransactionsRepository {
  // creating a singleton
  TransactionsImplementation.internal();
  static TransactionsImplementation instance =
      TransactionsImplementation.internal();
  TransactionsImplementation factory() {
    return instance;
  }

///////////////////////////////////////////
  ///
  late Box<TransactionsModel> transactionBox;
  openTransactionBox() async {
    transactionBox = await Hive.openBox("transactionBox");
  }

  @override
  Future<void> addGetTransction({
    required String fromContactId,
    required String toContactId,
    required int amount,
    required bool isPayed,
  }) async {
    final transactedAccountsList = transactionBox.values.toList();
    if (transactedAccountsList
        .where((element) => element.contactId == fromContactId)
        .isEmpty) {
      transactionBox.add(TransactionsModel(
          contactId: fromContactId,
          recievedAmt: amount,
          payedAmt: 0,
          balanceAmt: amount,
          secondaryTransaction:[ SecondaryTransactionsModel(
            toContactId: toContactId, payedAmt:0 ,
             balanceAmt: amount, isPayed: isPayed,
              givenAmt: amount, fromContactId: fromContactId)]
          
          ));
    }
  }

  @override
  Future<void> addGiveTransction(
      {required String fromContactId,
      required String toContactId,
      required int amount}) {
    // TODO: implement addGiveTransction
    throw UnimplementedError();
  }
}
