import 'dart:developer';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import 'package:linq_pe/application/party/customer/customer_bloc.dart';
import 'package:linq_pe/application/seondary_party/secondary_party_bloc.dart';
import 'package:linq_pe/application/split_amount/split_amount_bloc.dart';
import 'package:linq_pe/application/transactions/transactions_bloc.dart';
import 'package:linq_pe/application/view_dto/transaction/secondary_transaction_dto.dart';
import 'package:linq_pe/domain/models/transactions/transaction_type.dart';
import 'package:linq_pe/presentation/screens/add_amount/widgets/drop_down_search_text_field.dart';
import 'package:linq_pe/presentation/screens/add_amount/widgets/radio_box_widget.dart';
import 'package:linq_pe/presentation/screens/add_party/widgets/add_textfield.dart';
import 'package:linq_pe/presentation/view_state/add_amount_riverpod/add_amount.dart';
import 'package:linq_pe/presentation/view_state/secondary_party_riverpod/secondary_party.dart';
import 'package:linq_pe/presentation/view_state/view_party_riverpod.dart/view_party.dart';
import 'package:linq_pe/presentation/widgets/alert_snackbar.dart';
import 'package:linq_pe/utilities/colors.dart';
import 'package:linq_pe/utilities/list.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

class AddAmountScreen extends StatefulWidget {
  const AddAmountScreen({
    super.key,
    this.isAddExpense = false,
    required this.isPay,
    required this.isAddBalance,
    required this.partyName,
    required this.isSplit,
    required this.isSecondaryPay,
    required this.isGive,
    this.isSplittingBalance = false,
    this.primaryPartyName = '',
    this.splitAmount = '',
    this.transactionRealId = '',
    this.splittedTransactionId = '',
    this.isEdit = false,
    this.editTransaction = '',
    this.primaryContactId = '',
  });
  final bool isPay;
  final bool isAddBalance;
  final String partyName;
  final bool isSecondaryPay;
  final bool isSplit;
  final String primaryPartyName;
  final String splitAmount;
  final String transactionRealId;
  final String splittedTransactionId;
  final bool isGive;
  final bool isAddExpense;
  final bool isSplittingBalance;
  final bool isEdit;
  final dynamic editTransaction;
  final String primaryContactId;

  @override
  State<AddAmountScreen> createState() => _AddAmountScreenState();
}

class _AddAmountScreenState extends State<AddAmountScreen> {
  final TextEditingController amountController = TextEditingController();

  final TextEditingController detailsController = TextEditingController();

  final TextEditingController transactionIdController = TextEditingController();
  @override
  void initState() {
    super.initState();
        if (widget.isEdit) {
      amountController.text = widget.editTransaction.givenAmt.toString();
      if (widget.editTransaction.transactionDetails != null) {
        detailsController.text = widget.editTransaction.transactionDetails!;
      }
      if (widget.editTransaction.transactionId != null) {
        transactionIdController.text = widget.editTransaction.transactionId!;
      }
    }
  }

  @override
  Widget build(BuildContext context) {

    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: LinqPeColors.kLightBluwWhite,
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back,
              color: LinqPeColors.kWhiteColor,
            )),
        backgroundColor: LinqPeColors.kPinkColor,
        title: Text(
          widget.isAddExpense
              ? 'Adding Expense'
              : widget.isSplit
                  ? 'Split Amount: ${widget.splitAmount}'
                  : widget.isAddBalance || widget.isGive
                      ? 'You give to ${widget.partyName}'
                      : widget.isPay
                          ? widget.isSecondaryPay
                              ? '${widget.partyName} pay for ${widget.primaryPartyName}'
                              : 'You pay for ${widget.partyName}'
                          : 'You got from ${widget.partyName}',
          style: GoogleFonts.poppins(
            textStyle: TextStyle(
              letterSpacing: .1,
              fontSize:
                  widget.isSecondaryPay ? size.width * 0.05 : size.width * 0.06,
              color: LinqPeColors.kWhiteColor,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
      bottomSheet:
          // SizedBox(
          // height: size.height * 0.2,
          // width: size.width,
          // child: Column(
          //   children: [
          // ColoredBox(
          //   color: LinqPeColors.kLightBluwWhite,
          //   child: Container(
          //     margin: EdgeInsets.symmetric(
          //         horizontal: size.width * 0.05, vertical: size.width * 0.05),
          //     height: size.height * 0.065,
          //     width: size.width,
          //     decoration: const BoxDecoration(color: LinqPeColors.kPinkColor),
          //     child: InkWell(
          //       onTap: () {
          //         // Navigator.push(
          //         //     context,
          //         //     CupertinoPageRoute(
          //         //       builder: (context) => ,

          //         //     ));
          //       },
          //       child: Center(
          //           child: Text(
          //         'SPLIT',
          //         style: GoogleFonts.poppins(
          //           textStyle: TextStyle(
          //             letterSpacing: .5,
          //             fontSize: size.width * 0.04,
          //             color: LinqPeColors.kWhiteColor,
          //             fontWeight: FontWeight.w600,
          //           ),
          //         ),
          //       )),
          //     ),
          //   ),
          // ),
          AddButton(
              primaryContactId: widget.primaryContactId,
              isEdit: widget.isEdit,
              isAddExpense: widget.isAddExpense,
              isGive: widget.isGive,
              splitAmount: widget.splitAmount,
              splittedTransactionId: widget.splittedTransactionId,
              transactionRealId: widget.transactionRealId,
              isSplit: widget.isSplit,
              size: size,
              isSplittingBalance: widget.isSplittingBalance,
              isAddBalance: widget.isAddBalance,
              isPay: widget.isPay,
              isSecondaryPay: widget.isSecondaryPay),
      //     ],
      //   ),
      // ),
      //  backgroundColor: LinqPeColors.kPinkColor.withOpacity(0.4),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(size.width * 0.01),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: size.height * 0.02,
              ),
              AddTextField(
                  textFieldType: TextFieldType.amount,
                  prefix: Icon(
                    Icons.currency_rupee,
                    size: size.width * 0.08,
                    color: LinqPeColors.kBlackColor.withOpacity(0.9),
                  ),
                  fontSize: size.width * 0.08,
                  controller: amountController,
                  isTextNumberType: true,
                  text: 'Enter amount',
                  fieldColor: LinqPeColors.kPinkColor),
              widget.isAddExpense
                  ? SizedBox(
                      height: size.height * 0.03,
                    )
                  : const SizedBox(),
              widget.isAddExpense
                  ? Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: size.width * 0.03),
                      child: const DropDownSearchTextField(
                        isFromField: true,
                        hintText: 'From who',
                      ))
                  : const SizedBox(),
              SizedBox(
                height: widget.isPay ||
                        widget.isSecondaryPay ||
                        widget.isSplit ||
                        widget.isAddExpense
                    ? size.height * 0.03
                    : 0,
              ),
              widget.isPay ||
                      widget.isSecondaryPay ||
                      widget.isSplit ||
                      widget.isAddExpense
                  ? Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: size.width * 0.03),
                      child: const DropDownSearchTextField(
                        isFromField: false,
                        hintText: 'To whom',
                      ))
                  : const SizedBox(),
              SizedBox(
                height: size.height * 0.03,
              ),
              AddTextField(
                  textFieldType: TextFieldType.details,
                  controller: detailsController,
                  isTextNumberType: false,
                  text: 'Enter details',
                  fieldColor: LinqPeColors.kPinkColor),
              SizedBox(
                height: size.height * 0.03,
              ),
              SizedBox(
                height: size.height * 0.0001,
              ),
              AddTextField(
                  textFieldType: TextFieldType.transactionId,
                  controller: transactionIdController,
                  isTextNumberType: true,
                  text: 'Add transaction Id',
                  fieldColor: LinqPeColors.kPinkColor),
              SizedBox(
                height: size.height * 0.03,
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: size.width * 0.05,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: List.generate(
                      LinqPeList.transactionTypeList.length,
                      (index) => RadioBoxWidget(
                            transactionName:
                                LinqPeList.transactionTypeList[index],
                            transactionValue: transactionList(index),
                          )),
                ),
              ),
              SizedBox(
                height: size.height * 0.04,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      showPopup(context, size);
                    },
                    child: Container(
                      margin: EdgeInsets.only(left: size.width * 0.04),
                      width: size.width * 0.35,
                      height: size.height * 0.05,
                      decoration: BoxDecoration(
                          color: LinqPeColors.kWhiteColor,
                          boxShadow: [
                            BoxShadow(
                                color:
                                    LinqPeColors.kBlackColor.withOpacity(0.5),
                                spreadRadius: 0.01,
                                offset: const Offset(0.3, 1))
                          ]),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(Icons.date_range),
                          TimeWidget(),
                        ],
                      ),
                    ),
                  ),
                  // SfDateRangePicker(
                  //   onSubmit: (value) {
                  //     log(value.toString());
                  //   },
                  // ),
                  AttachBillRow(size: size),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Future<void> showPopup(
    BuildContext context,
    Size size,
  ) async {
    return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
            content: SizedBox(
                width: size.width * 0.8,
                height: size.width * 0.8,
                child: const DatePickerWidget()));
      },
    );
  }
}

class AddButton extends ConsumerWidget {
  const AddButton({
    super.key,
    required this.isSplit,
    required this.size,
    required this.isAddBalance,
    required this.isPay,
    required this.isSecondaryPay,
    required this.transactionRealId,
    required this.splittedTransactionId,
    required this.splitAmount,
    required this.isGive,
    required this.isAddExpense,
    required this.isSplittingBalance,
    required this.isEdit,
    required this.primaryContactId,
  });

  final Size size;
  final bool isPay;
  final bool isAddBalance;
  final bool isSecondaryPay;
  final bool isSplit;
  final String transactionRealId;
  final String splittedTransactionId;
  final String splitAmount;
  final bool isGive;
  final bool isAddExpense;
  final bool isSplittingBalance;
  final bool isEdit;
  final String primaryContactId;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return BlocBuilder<SplitAmountBloc, SplitAmountState>(
      builder: (context, splitstate) {
        List<NestedSecondaryTransactionsDTO> splitList = [];
        if (splitstate is displaySplitAmountList) {
          splitList = splitstate.transactionList;
        }
        return BlocBuilder<SecondaryPartyBloc, SecondaryPartyState>(
          builder: (context, secondarystate) {
            List<NestedSecondaryTransactionsDTO> transactionList = [];
            if (secondarystate is displaySecondaryPartyList) {
              transactionList = secondarystate.transactionList;
            }

            return ColoredBox(
              color: LinqPeColors.kLightBluwWhite,
              child: Container(
                margin: EdgeInsets.symmetric(
                    horizontal: size.width * 0.05, vertical: size.width * 0.05),
                height: size.height * 0.065,
                width: size.width,
                decoration: const BoxDecoration(color: LinqPeColors.kPinkColor),
                child: InkWell(
                  onTap: () {
                    bool isToGoBack = true;
                    if (ref.watch(amountProvider) >= 0) {
                      if (!isEdit) {
                        if (!isAddBalance &&
                            !isSecondaryPay &&
                            !isAddExpense &&
                            !isSplit &&
                            !isSplittingBalance &&
                            !isGive) {
                          log('Recalled');
                          if (isPay &&
                              ref.watch(primaryPartyBalanceAmountProvider) <
                                  ref.watch(amountProvider)) {
                            isToGoBack = false;
                            //Give a toast that you dont have enough Balance
                            alertSnackbar(
                                context, 'You dont have enough Balance');
                          } else {
                            BlocProvider.of<TransactionsBloc>(context).add(
                                TransactionsEvent.addGetTransctions(
                                    transactionDetails: ref
                                            .watch(transactionDetailsProvider)
                                            .isEmpty
                                        ? null
                                        : ref.watch(transactionDetailsProvider),
                                    fromContactId:
                                        ref.watch(fromContactIdProvider),
                                    toContactId: ref.watch(toContactIdProvider),
                                    amount: ref.watch(amountProvider),
                                    isPayed: isPay,
                                    transactionType:
                                        ref.watch(transactionTypeProvider),
                                    timeOfTrans: ref.watch(dateProvider),
                                    billImage:
                                        ref.watch(imageProvider).path.isEmpty
                                            ? null
                                            : ref.watch(imageProvider),
                                    transactionId: ref
                                            .watch(transactionIdProvider)
                                            .isEmpty
                                        ? null
                                        : ref.watch(transactionIdProvider)));
                            Future.delayed(
                              const Duration(milliseconds: 100),
                              () => BlocProvider.of<CustomerBloc>(context)
                                  .add(const CustomerEvent.getCustomerList()),
                            );
                          }
                        } else if (isAddBalance) {
                          BlocProvider.of<TransactionsBloc>(context).add(
                              TransactionsEvent.addBalanceTransctions(
                                  transactionDetails: ref
                                          .watch(transactionDetailsProvider)
                                          .isEmpty
                                      ? null
                                      : ref.watch(transactionDetailsProvider),
                                  fromContactId: 'You',
                                  toContactId: ref.watch(fromContactIdProvider),
                                  amount: ref.watch(amountProvider),
                                  transactionType:
                                      ref.watch(transactionTypeProvider),
                                  timeOfTrans: ref.watch(dateProvider),
                                  billImage:
                                      ref.watch(imageProvider).path.isEmpty
                                          ? null
                                          : ref.watch(imageProvider),
                                  transactionId:
                                      ref.watch(transactionIdProvider).isEmpty
                                          ? null
                                          : ref.watch(transactionIdProvider)));
                          Future.delayed(
                            const Duration(milliseconds: 100),
                            () => BlocProvider.of<CustomerBloc>(context)
                                .add(const CustomerEvent.getCustomerList()),
                          );
                        } else if (isSecondaryPay) {
                          log(ref.watch(amountProvider).toString());
                          log(ref
                              .watch(secondaryPartyBalanceAmountProvider)
                              .toString());
                          if (ref.watch(amountProvider) <=
                              ref.watch(secondaryPartyBalanceAmountProvider)) {
                            log('Okays');
                            List<NestedSecondaryTransactionsDTO>
                                listOfTransaction = List.from(transactionList);
                            listOfTransaction
                                .add(NestedSecondaryTransactionsDTO(
                              isGet: false,
                              isGive: false,
                              isAddBalance: true,
                              isSplit: false,
                              id: DateTime.now()
                                  .millisecondsSinceEpoch
                                  .toString(),
                              transactionType:
                                  ref.watch(transactionTypeProvider),
                              timeOfTrans: ref.watch(dateProvider),
                              toContactId: ref.watch(toContactIdProvider),
                              payedAmt: ref.watch(amountProvider),
                              balanceAmt: ref
                                  .watch(secondaryPartyBalanceAmountProvider),
                              isPayed: true,
                              givenAmt: ref.watch(amountProvider),
                              fromContactId:
                                  ref.watch(secondaryContactIdProvider),
                              billImage: ref.watch(imageProvider).path.isEmpty
                                  ? null
                                  : ref.watch(imageProvider),
                              secondaryList: null,
                              transactionDetails:
                                  ref.watch(transactionDetailsProvider).isEmpty
                                      ? null
                                      : ref.watch(transactionDetailsProvider),
                              transactionId:
                                  ref.watch(transactionIdProvider).isEmpty
                                      ? null
                                      : ref.watch(transactionIdProvider),
                            ));
                            List<NestedSecondaryTransactionsDTO>
                                listOfSplitTransaction = List.from(splitList);
                            final splitIndex =
                                listOfSplitTransaction.indexWhere((element) =>
                                    element.id == transactionRealId);
                            if (splitIndex >= 0) {
                              listOfSplitTransaction[splitIndex] = NestedSecondaryTransactionsDTO(
                                  isAddBalance: listOfSplitTransaction[splitIndex]
                                      .isAddBalance,
                                  isGet:
                                      listOfSplitTransaction[splitIndex].isGet,
                                  isGive:
                                      listOfSplitTransaction[splitIndex].isGive,
                                  isSplit: listOfSplitTransaction[splitIndex]
                                      .isSplit,
                                  id: listOfSplitTransaction[splitIndex].id,
                                  transactionType:
                                      listOfSplitTransaction[splitIndex]
                                          .transactionType,
                                  timeOfTrans: listOfSplitTransaction[splitIndex]
                                      .timeOfTrans,
                                  toContactId: listOfSplitTransaction[splitIndex]
                                      .toContactId,
                                  payedAmt: listOfSplitTransaction[splitIndex]
                                      .payedAmt,
                                  balanceAmt: listOfSplitTransaction[splitIndex]
                                      .balanceAmt,
                                  isPayed: listOfSplitTransaction[splitIndex]
                                      .isPayed,
                                  givenAmt: listOfSplitTransaction[splitIndex]
                                      .givenAmt,
                                  fromContactId: listOfSplitTransaction[splitIndex]
                                      .fromContactId,
                                  billImage: listOfSplitTransaction[splitIndex]
                                      .billImage,
                                  transactionDetails: listOfSplitTransaction[splitIndex]
                                      .transactionDetails,
                                  transactionId:
                                      listOfSplitTransaction[splitIndex].transactionId,
                                  secondaryList: listOfTransaction);
                            }
                            BlocProvider.of<SplitAmountBloc>(context).add(
                                SplitAmountEvent.addSplitAmountList(
                                    transactionList: listOfSplitTransaction));
                            BlocProvider.of<SecondaryPartyBloc>(context).add(
                                SecondaryPartyEvent.addSecondaryPartyList(
                                    transactionList: listOfTransaction));

                            // addSecondaryPayment(ref.watch(amountProvider), ref);

                            // addSecondaryDTO(
                            // SecondaryTransactionsDTO(
                            //   transactionType: ref.watch(transactionTypeProvider),
                            //   timeOfTrans: ref.watch(dateProvider),
                            //   toContactId: ref.watch(toContactIdProvider),
                            //   payedAmt: ref.watch(amountProvider),
                            //   balanceAmt:
                            //       ref.watch(secondaryPartyBalanceAmountProvider),
                            //   isPayed: true,
                            //   givenAmt: ref.watch(amountProvider),
                            //   fromContactId: ref.watch(secondaryContactIdProvider),
                            //   billImage: ref.watch(imageProvider).path.isEmpty
                            //       ? null
                            //       : ref.watch(imageProvider),
                            //   secondaryTransaction: null,
                            //   transactionDetails:
                            //       ref.watch(transactionDetailsProvider).isEmpty
                            //           ? null
                            //           : ref.watch(transactionDetailsProvider),
                            //   transactionId: ref.watch(transactionIdProvider).isEmpty
                            //       ? null
                            //       : ref.watch(transactionIdProvider),
                            // ),
                            //     ref);
                            BlocProvider.of<TransactionsBloc>(context).add(
                                TransactionsEvent.addSecondaryPartyPayment(
                                    isSplittedPrimaryTransaction: true,
                                    splittedTransactionId:
                                        splittedTransactionId,
                                    transactionRealId: transactionRealId,
                                    amountPayed: ref.watch(amountProvider),
                                    payedToId: ref.watch(toContactIdProvider),
                                    primaryContactId:
                                        ref.watch(fromContactIdProvider),
                                    secondaryContactId:
                                        ref.watch(secondaryContactIdProvider),
                                    transactionDetails: ref
                                            .watch(transactionDetailsProvider)
                                            .isEmpty
                                        ? null
                                        : ref.watch(transactionDetailsProvider),
                                    transactionType:
                                        ref.watch(transactionTypeProvider),
                                    timeOfTrans: ref.watch(dateProvider),
                                    billImage:
                                        ref.watch(imageProvider).path.isEmpty
                                            ? null
                                            : ref.watch(imageProvider),
                                    transactionId: ref
                                            .watch(transactionIdProvider)
                                            .isEmpty
                                        ? null
                                        : ref.watch(transactionIdProvider)));
                            Future.delayed(
                              const Duration(milliseconds: 100),
                              () => BlocProvider.of<CustomerBloc>(context)
                                  .add(const CustomerEvent.getCustomerList()),
                            );
                          } else {
                            isToGoBack = false;
                            //Give a toast that you dont have enough Balance
                            alertSnackbar(
                                context, 'You dont have enough Balance');
                          }
                        } else if (isSplit && !isSplittingBalance) {
                          log('listHere2${ref.watch(toContactIdProvider).toString()}');
                          if (double.parse(splitAmount) >=
                              ref.watch(amountProvider)) {
                            final id = DateTime.now()
                                .millisecondsSinceEpoch
                                .toString();
                            List<NestedSecondaryTransactionsDTO>
                                listOfTransaction = List.from(splitList);
                            listOfTransaction
                                .add(NestedSecondaryTransactionsDTO(
                              isAddBalance: false,
                              isGet: false,
                              isGive: false,
                              isSplit: isSplit,
                              id: id,
                              transactionType:
                                  ref.watch(transactionTypeProvider),
                              timeOfTrans: ref.watch(dateProvider),
                              toContactId: ref.watch(toContactIdProvider),
                              payedAmt: 0,
                              balanceAmt: ref.watch(amountProvider),
                              isPayed: false,
                              givenAmt: ref.watch(amountProvider),
                              fromContactId: 'You',
                              billImage: ref.watch(imageProvider).path.isEmpty
                                  ? null
                                  : ref.watch(imageProvider),
                              transactionDetails:
                                  ref.watch(transactionDetailsProvider).isEmpty
                                      ? null
                                      : ref.watch(transactionDetailsProvider),
                              transactionId:
                                  ref.watch(transactionIdProvider).isEmpty
                                      ? null
                                      : ref.watch(transactionIdProvider),
                            ));

                            BlocProvider.of<SplitAmountBloc>(context).add(
                                SplitAmountEvent.addSplitAmountList(
                                    transactionList: listOfTransaction));

                            BlocProvider.of<TransactionsBloc>(context)
                                .add(TransactionsEvent.splitAmounts(
                              id: id,
                              primaryContactId:
                                  ref.watch(fromContactIdProvider),
                              toContactId: ref.watch(toContactIdProvider),
                              transactionId: transactionRealId,
                              splitAmount: ref.watch(amountProvider),
                              transactionDetails:
                                  ref.watch(transactionDetailsProvider).isEmpty
                                      ? null
                                      : ref.watch(transactionDetailsProvider),
                              transactionType:
                                  ref.watch(transactionTypeProvider),
                              timeOfTrans: ref.watch(dateProvider),
                              billImage: ref.watch(imageProvider).path.isEmpty
                                  ? null
                                  : ref.watch(imageProvider),
                              userTransactionId:
                                  ref.watch(transactionIdProvider).isEmpty
                                      ? null
                                      : ref.watch(transactionIdProvider),
                            ));
                          } else {
                            isToGoBack = false;
                            //Give a toast that you dont have enough Balance
                            alertSnackbar(
                                context, 'You dont have enough Balance');
                          }
                        } else if (isGive) {
                          BlocProvider.of<TransactionsBloc>(context).add(
                              TransactionsEvent.addGiveTransactions(
                                  transactionDetails: ref
                                          .watch(transactionDetailsProvider)
                                          .isEmpty
                                      ? null
                                      : ref.watch(transactionDetailsProvider),
                                  fromContactId: 'You',
                                  toContactId: ref.watch(fromContactIdProvider),
                                  amount: ref.watch(amountProvider),
                                  transactionType:
                                      ref.watch(transactionTypeProvider),
                                  timeOfTrans: ref.watch(dateProvider),
                                  billImage:
                                      ref.watch(imageProvider).path.isEmpty
                                          ? null
                                          : ref.watch(imageProvider),
                                  transactionId:
                                      ref.watch(transactionIdProvider).isEmpty
                                          ? null
                                          : ref.watch(transactionIdProvider)));
                          Future.delayed(
                            const Duration(milliseconds: 100),
                            () => BlocProvider.of<CustomerBloc>(context)
                                .add(const CustomerEvent.getCustomerList()),
                          );
                        } else if (isAddExpense) {
                          log('AddEx${ref.watch(primaryPartyBalanceAmountProvider)}');
                          if (ref.watch(primaryPartyBalanceAmountProvider) <
                              ref.watch(amountProvider)) {
                            isToGoBack = false;
                            //Give a toast that you dont have enough Balance
                            alertSnackbar(
                                context, 'You dont have enough Balance');
                          } else {
                            BlocProvider.of<TransactionsBloc>(context).add(
                                TransactionsEvent.addGetTransctions(
                                    transactionDetails: ref
                                            .watch(transactionDetailsProvider)
                                            .isEmpty
                                        ? null
                                        : ref.watch(transactionDetailsProvider),
                                    fromContactId:
                                        ref.watch(fromContactIdProvider),
                                    toContactId: ref.watch(toContactIdProvider),
                                    amount: ref.watch(amountProvider),
                                    isPayed: true,
                                    transactionType:
                                        ref.watch(transactionTypeProvider),
                                    timeOfTrans: ref.watch(dateProvider),
                                    billImage:
                                        ref.watch(imageProvider).path.isEmpty
                                            ? null
                                            : ref.watch(imageProvider),
                                    transactionId: ref
                                            .watch(transactionIdProvider)
                                            .isEmpty
                                        ? null
                                        : ref.watch(transactionIdProvider)));
                            Future.delayed(
                              const Duration(milliseconds: 100),
                              () => BlocProvider.of<CustomerBloc>(context)
                                  .add(const CustomerEvent.getCustomerList()),
                            );
                          }
                        } else if (isSplittingBalance) {
                          if (double.parse(splitAmount) >=
                              ref.watch(amountProvider)) {
                            BlocProvider.of<TransactionsBloc>(context)
                                .add(TransactionsEvent.splittingBalanceAmount(
                              primaryContactId:
                                  ref.watch(fromContactIdProvider),
                              toContactId: ref.watch(toContactIdProvider),
                              splitAmount: ref.watch(amountProvider),
                              transactionDetails:
                                  ref.watch(transactionDetailsProvider).isEmpty
                                      ? null
                                      : ref.watch(transactionDetailsProvider),
                              transactionType:
                                  ref.watch(transactionTypeProvider),
                              timeOfTrans: ref.watch(dateProvider),
                              billImage: ref.watch(imageProvider).path.isEmpty
                                  ? null
                                  : ref.watch(imageProvider),
                              userTransactionId:
                                  ref.watch(transactionIdProvider).isEmpty
                                      ? null
                                      : ref.watch(transactionIdProvider),
                            ));
                            Future.delayed(
                              const Duration(milliseconds: 100),
                              () => BlocProvider.of<CustomerBloc>(context)
                                  .add(const CustomerEvent.getCustomerList()),
                            );
                          } else {
                            isToGoBack = false;
                            //Give a toast that you dont have enough Balance
                            alertSnackbar(
                                context, 'You dont have enough Balance');
                          }
                        }
                      } else {
                        BlocProvider.of<TransactionsBloc>(context).add(
                            TransactionsEvent.editTransactions(
                                amount: ref.watch(amountProvider),
                                transactionRealId: transactionRealId,
                                toId: ref.watch(toContactIdProvider),
                                transactionDetails: ref
                                        .watch(transactionDetailsProvider)
                                        .isEmpty
                                    ? null
                                    : ref.watch(transactionDetailsProvider),
                                transactionType:
                                    ref.watch(transactionTypeProvider),
                                timeOfTrans: ref.watch(dateProvider),
                                billImage: ref.watch(imageProvider).path.isEmpty
                                    ? null
                                    : ref.watch(imageProvider),
                                transactionId:
                                    ref.watch(transactionIdProvider).isEmpty
                                        ? null
                                        : ref.watch(transactionIdProvider),
                                primaryContactId: primaryContactId));
                                  Future.delayed(
                              const Duration(milliseconds: 100),
                              () => BlocProvider.of<CustomerBloc>(context)
                                  .add(const CustomerEvent.getCustomerList()),
                            );
                        Navigator.pop(context);
                      }
                    }

                    if (isToGoBack) {
                      Navigator.pop(context);
                    }
                  },
                  child: Center(
                      child: Text(
                    isPay ? 'PAY' : 'SAVE',
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        letterSpacing: .5,
                        fontSize: size.width * 0.04,
                        color: LinqPeColors.kWhiteColor,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  )),
                ),
              ),
            );
          },
        );
      },
    );
  }
}

class AttachBillRow extends ConsumerWidget {
  const AttachBillRow({
    required this.size,
    super.key,
  });
  final Size size;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final imageFile = ref.watch(imageProvider);
    return Container(
      margin: EdgeInsets.only(right: size.width * 0.04),
      width: size.width * 0.35,
      height: size.height * 0.05,
      decoration: BoxDecoration(color: LinqPeColors.kWhiteColor, boxShadow: [
        BoxShadow(
            color: LinqPeColors.kBlackColor.withOpacity(0.5),
            spreadRadius: 0.01,
            offset: const Offset(0.3, 1))
      ]),
      child: InkWell(
        onTap: () {
          pickImage(ref);
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Icon(Icons.camera_alt),
            imageFile.path.isEmpty
                ? const Text(
                    'Attach bills',
                    style: TextStyle(fontWeight: FontWeight.w500),
                  )
                : Image.file(imageFile),
          ],
        ),
      ),
    );
  }

  Future<void> pickImage(WidgetRef ref) async {
    final ImagePicker picker = ImagePicker();
    XFile? pickedFile;

    try {
      pickedFile = await picker.pickImage(source: ImageSource.gallery);
    } catch (e) {
      print("Error picking image: $e");
    }

    if (pickedFile != null) {
      File image = File(pickedFile.path);
      addImage(image, ref);
    }
  }
}

class DatePickerWidget extends ConsumerWidget {
  const DatePickerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SfDateRangePicker(
      onSelectionChanged: (value) {
        log('Value${value.value}');
        addTime(value.value, ref);
        Navigator.pop(context);
      },
    );
  }
}

class TimeWidget extends ConsumerWidget {
  const TimeWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    DateTime dateTime = ref.watch(dateProvider);

    return Text(
      '${dateTime.day} ${LinqPeList.monthNames[dateTime.month - 1]} ${dateTime.year}',
      style: const TextStyle(fontWeight: FontWeight.w500),
    );
  }
}
