import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:linq_pe/application/contacts/contacts_bloc.dart';
import 'package:linq_pe/application/ledger/ledger_bloc.dart';
import 'package:linq_pe/application/party/customer/customer_bloc.dart';
import 'package:linq_pe/application/party/expense/expense_bloc.dart';
import 'package:linq_pe/application/rolling/rolling_bloc.dart';
import 'package:linq_pe/application/seondary_party/secondary_party_bloc.dart';
import 'package:linq_pe/application/split_amount/split_amount_bloc.dart';
import 'package:linq_pe/application/splitted/splitted_bloc.dart';
import 'package:linq_pe/application/transactions/transactions_bloc.dart';

import 'package:linq_pe/domain/models/contacts/contacts.dart';
import 'package:linq_pe/domain/models/ledger/ledger.dart';
import 'package:linq_pe/domain/models/party/Expense_account/expense_account.dart';
import 'package:linq_pe/domain/models/party/customer/customer.dart';
import 'package:linq_pe/domain/models/rolling/pay_back_account.dart';
import 'package:linq_pe/domain/models/rolling/rolling.dart';
import 'package:linq_pe/domain/models/splitted/splitted_accounts.dart';
import 'package:linq_pe/domain/models/transactions/secondary_transactions.dart';
import 'package:linq_pe/domain/models/transactions/party_account_model.dart';
import 'package:linq_pe/domain/models/transactions/transaction_model.dart';

import 'package:linq_pe/infrastructure/contacts/contacts_implementation.dart';
import 'package:linq_pe/infrastructure/ledger/ledger_implementation.dart';
import 'package:linq_pe/infrastructure/party/party_implementation.dart';
import 'package:linq_pe/infrastructure/rolling/rolling_infrastructure.dart';
import 'package:linq_pe/infrastructure/splitting/splitting_implementation.dart';
import 'package:linq_pe/infrastructure/transactions/transactions_implementation.dart';

import 'package:linq_pe/presentation/screens/splash_scren/screen_splash.dart';
import 'package:motion/motion.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();

  Hive.registerAdapter(ContactsModelAdapter());
  await Hive.openBox<ContactsModel>('ContactsBox');
  await ContactsImplementation.instance.openContactsBox();
  Hive.registerAdapter(CustomerModelAdapter());
  await Hive.openBox<CustomerModel>('CustomerBox');
  await PartyImplementation.instance.openCustomerBox();
  Hive.registerAdapter(PartyAccountsModelAdapter());
  await Hive.openBox<PartyAccountsModel>('PartyAcccountsBox');
  Hive.registerAdapter(SecondaryTransactionsModelAdapter());
  Hive.registerAdapter(TransactionTypeAdapter());
  await Hive.openBox<SecondaryTransactionsModel>('SecondaryTransactionsBox');
  await TransactionsImplementation.instance.openTransactionBox();
  Hive.registerAdapter(TransactionModelAdapter());
  await Hive.openBox<TransactionModel>('TransactionModel');
  await TransactionsImplementation.instance.openPartyAccountsBox();
  Hive.registerAdapter(ExpenseAccountModelAdapter());
  await Hive.openBox<ExpenseAccountModel>('ExpenseAccountModel');
  await TransactionsImplementation.instance.openExpenseBox();
  Hive.registerAdapter(SplittedAccountsModelAdapter());
  await Hive.openBox<SplittedAccountsModel>('SplittedAccountsModel');
  await SplittingImplementation.instance.opensplittingBox();
    Hive.registerAdapter(PayBackAccountModelAdapter());
  await Hive.openBox<PayBackAccountModel>('PayBackAccountModel');
  Hive.registerAdapter(RollingAccountsModelAdapter());
  await Hive.openBox<RollingAccountsModel>('RollingAccountsModel');
  await RollingImplementation.instance.openRollingBox();


  Hive.registerAdapter(LedgerModelAdapter());
  await Hive.openBox<LedgerModel>('LedgerBox');
  await LedgerImplementation.instance.openLedgerBox();

  await Motion.instance.initialize();
  Motion.instance.setUpdateInterval(60.fps);
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => ContactsBloc(),
        ),
        BlocProvider(
          create: (context) => CustomerBloc(),
        ),
        BlocProvider(
          create: (context) => TransactionsBloc(),
        ),
        BlocProvider(
          create: (context) => SecondaryPartyBloc(),
        ),
        BlocProvider(
          create: (context) => SplitAmountBloc(),
        ),
        BlocProvider(
          create: (context) => ExpenseBloc(),
        ),
        BlocProvider(
          create: (context) => SplittedBloc(),
        ),
        BlocProvider(
          create: (context) => LedgerBloc(),
        ),
           BlocProvider(
          create: (context) => RollingBloc(),
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Linq Pe',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const SplashScreen(),
      ),
    );
  }
}
