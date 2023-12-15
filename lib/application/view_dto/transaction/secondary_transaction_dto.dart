import 'dart:io';
import 'dart:typed_data';

import 'package:linq_pe/domain/models/transactions/secondary_transactions.dart';
import 'package:linq_pe/domain/models/transactions/transaction_model.dart';
import 'package:linq_pe/domain/models/transactions/transaction_type.dart';
import 'package:linq_pe/infrastructure/transactions/transactions_implementation.dart';
import 'package:path_provider/path_provider.dart';

class SecondaryTransactionsDTO {
  final String toContactId;
  final double givenAmt;
  final bool isPayed;
  final double balanceAmt;
  final double payedAmt;
  final bool isGet;
  final bool isGive;
  final bool isAddBalance;
  final String fromContactId;
  final DateTime timeOfTrans;
  final TransactionTypes transactionType;
  final File? billImage;
  final String? transactionDetails;
  final String id;
  final bool isSplit;

  final String? transactionId;
  SecondaryTransactionsDTO({
    required this.isGet,
    required this.isGive,
    required this.isAddBalance,
    required this.isSplit,
    required this.id,
    this.transactionDetails,
    this.transactionId,
    required this.transactionType,
    required this.timeOfTrans,
    required this.toContactId,
    required this.payedAmt,
    required this.balanceAmt,
    required this.isPayed,
    required this.givenAmt,
    required this.fromContactId,
    this.billImage,
  });
}

Future<List<SecondaryTransactionsDTO>> convertSecondaryTransactionsModeltoDTO(
    List<SecondaryTransactionsModel>? secondaryTransactions)async {
  if (secondaryTransactions == null) {
    return [];
  }

  final List<SecondaryTransactionsDTO> secondaryList = [];
  for (var secondarytTransaction in secondaryTransactions) {
    secondaryList.add(SecondaryTransactionsDTO(
      isAddBalance: secondarytTransaction.isAddBalance,
      isGet: secondarytTransaction.isGet,
      isGive: secondarytTransaction.isGive,
      isSplit: secondarytTransaction.isSplit,
      id: secondarytTransaction.id,
      transactionDetails: secondarytTransaction.transactionDetails,
      transactionType:
          findTransactionTypes(secondarytTransaction.transactionType),
      timeOfTrans: secondarytTransaction.timeOfTrans,
      toContactId: secondarytTransaction.toContactId,
      payedAmt: secondarytTransaction.payedAmt,
      balanceAmt: secondarytTransaction.balanceAmt,
      isPayed: secondarytTransaction.isPayed,
      givenAmt: secondarytTransaction.givenAmt,
      fromContactId: secondarytTransaction.fromContactId,
      billImage: await uint8ListToFile(secondarytTransaction.billImage),
      transactionId: secondarytTransaction.transactionId,
    ));
  }
  return secondaryList;
}

TransactionTypes findTransactionTypes(TransactionType type) {
  if (type == TransactionType.cash) {
    return TransactionTypes.cash;
  } else if (type == TransactionType.bank) {
    return TransactionTypes.bank;
  } else {
    return TransactionTypes.wallet;
  }
}

Future<List<NestedSecondaryTransactionsDTO>>
    convertTransactionidListToSeconadryTransactionDTOList(
        List<TransactionModel>? transactionIdList) async{
  if (transactionIdList == null) {
    return [];
  }

  List<NestedSecondaryTransactionsDTO> secondaryTransactionList = [];
  final allTransactions =
      TransactionsImplementation.instance.getAllTransactions();
  for (var e in transactionIdList) {
    final trsnsactionIndex =
        allTransactions.indexWhere((element) => element.id == e.transactionId);
    if (trsnsactionIndex < 0) {
      continue;
    }
    secondaryTransactionList.add(NestedSecondaryTransactionsDTO(
      isExpense: allTransactions[trsnsactionIndex].isExpense,
      isSplit: allTransactions[trsnsactionIndex].isSplit,
      id: allTransactions[trsnsactionIndex].id,
      transactionType: findTransactionTypes(
          allTransactions[trsnsactionIndex].transactionType),
      timeOfTrans: allTransactions[trsnsactionIndex].timeOfTrans,
      toContactId: allTransactions[trsnsactionIndex].toContactId,
      payedAmt: allTransactions[trsnsactionIndex].payedAmt,
      balanceAmt: allTransactions[trsnsactionIndex].balanceAmt,
      isPayed: allTransactions[trsnsactionIndex].isPayed,
      givenAmt: allTransactions[trsnsactionIndex].givenAmt,
      fromContactId: allTransactions[trsnsactionIndex].fromContactId,
      billImage:await uint8ListToFile(allTransactions[trsnsactionIndex].billImage),
      transactionDetails: allTransactions[trsnsactionIndex].transactionDetails,
      transactionId: allTransactions[trsnsactionIndex].transactionId,
      secondaryList:await convertTransactionidListToSeconadryTransactionDTOList(
          e.transactionsList),
      isAddBalance: allTransactions[trsnsactionIndex].isAddBalance,
      isGet: allTransactions[trsnsactionIndex].isGet,
      isGive: allTransactions[trsnsactionIndex].isGive,
    ));
  }

  return secondaryTransactionList;
}

class NestedSecondaryTransactionsDTO {
  final String toContactId;
  final double givenAmt;
  final bool isPayed;
  final double balanceAmt;
  final double payedAmt;
  final bool isGet;
  final bool isGive;
  final bool isAddBalance;
  final String fromContactId;
  final DateTime timeOfTrans;
  final TransactionTypes transactionType;
  final File? billImage;
  final String? transactionDetails;
  final String id;
  final bool isSplit;
  final List<NestedSecondaryTransactionsDTO>? secondaryList;
  final bool isExpense;

  final String? transactionId;
  NestedSecondaryTransactionsDTO({
        required this.isExpense,
    required this.isGet,
    required this.isGive,
    required this.isAddBalance,
    this.secondaryList,
    required this.isSplit,
    required this.id,
    this.transactionDetails,
    this.transactionId,
    required this.transactionType,
    required this.timeOfTrans,
    required this.toContactId,
    required this.payedAmt,
    required this.balanceAmt,
    required this.isPayed,
    required this.givenAmt,
    required this.fromContactId,
    this.billImage,
  });
}

Future<Uint8List?> convertToUni8List(File? images) async {
  if (images == null) {
    return null;
  }
  final bytes = await images.readAsBytes();
  final imageUnit8List = Uint8List.fromList(bytes);
  return imageUnit8List;
}

Future<File?> uint8ListToFile(Uint8List? uint8List) async {
  if (uint8List == null) {
    return null;
  }
  Directory tempDir = await getTemporaryDirectory();
  String tempPath = tempDir.path;

  // Generate a unique file name, you might want to use a timestamp or other unique identifier
  String fileName = 'temp_file_${DateTime.now().millisecondsSinceEpoch}.png';

  File file = File('$tempPath/$fileName');

  // Write the Uint8List data to the file
  await file.writeAsBytes(uint8List);

  return file;
}
