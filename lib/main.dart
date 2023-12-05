

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:linq_pe/application/contacts/contacts_bloc.dart';
import 'package:linq_pe/application/party/customer/customer_bloc.dart';
import 'package:linq_pe/application/seondary_party/secondary_party_bloc.dart';
import 'package:linq_pe/application/split_amount/split_amount_bloc.dart';
import 'package:linq_pe/application/transactions/transactions_bloc.dart';

import 'package:linq_pe/domain/models/contacts/contacts.dart';
import 'package:linq_pe/domain/models/party/customer/customer.dart';
import 'package:linq_pe/domain/models/transactions/secondary_transactions.dart';
import 'package:linq_pe/domain/models/transactions/party_account_model.dart';
import 'package:linq_pe/domain/models/transactions/transaction_model.dart';

import 'package:linq_pe/infrastructure/contacts/contacts_implementation.dart';
import 'package:linq_pe/infrastructure/party/party_implementation.dart';
import 'package:linq_pe/infrastructure/transactions/transactions_implementation.dart';

import 'package:linq_pe/presentation/screens/splash_scren/screen_splash.dart';
import 'package:motion/motion.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
   
  Hive.registerAdapter(ContactsModelAdapter());
  await Hive.openBox<ContactsModel>('ContactsBox');
  ContactsImplementation.instance.openContactsBox();
  Hive.registerAdapter(CustomerModelAdapter());
  await Hive.openBox<CustomerModel>('CustomerBox');
  PartyImplementation.instance.openCustomerBox();
  Hive.registerAdapter(PartyAccountsModelAdapter());
  await Hive.openBox<PartyAccountsModel>('PartyAcccountsBox');
  Hive.registerAdapter(SecondaryTransactionsModelAdapter());
  Hive.registerAdapter(TransactionTypeAdapter());
  await Hive.openBox<SecondaryTransactionsModel>('SecondaryTransactionsBox');
  TransactionsImplementation.instance.openTransactionBox();
  Hive.registerAdapter(TransactionModelAdapter());
  await Hive.openBox<TransactionModel>('TransactionModel');
  TransactionsImplementation.instance.openPartyAccountsBox();

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
