import 'dart:developer';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import 'package:linq_pe/application/transactions/transactions_bloc.dart';
import 'package:linq_pe/domain/models/transactions/transaction_type.dart';
import 'package:linq_pe/presentation/screens/add_amount/widgets/drop_down_search_text_field.dart';
import 'package:linq_pe/presentation/screens/add_amount/widgets/radio_box_widget.dart';
import 'package:linq_pe/presentation/screens/add_party/widgets/add_textfield.dart';
import 'package:linq_pe/presentation/view_state/add_amount_riverpod/add_amount.dart';
import 'package:linq_pe/utilities/colors.dart';
import 'package:linq_pe/utilities/list.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

class AddAmountScreen extends StatefulWidget {
  const AddAmountScreen(
      {super.key,
      required this.isPay,
      required this.isGive,
      required this.partyName,
      required this.isSecondaryPay,
      this.primaryPartyName = ''});
  final bool isPay;
  final bool isGive;
  final String partyName;
  final bool isSecondaryPay;
  final String primaryPartyName;

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
          widget.isGive
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
              size: size,
              isGive: widget.isGive,
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
              SizedBox(
                height: widget.isGive ? 0 : size.height * 0.03,
              ),
              widget.isGive
                  ? const SizedBox()
                  : Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: size.width * 0.03),
                      child: const DropDownSearchTextField(
                        hintText: 'To whom',
                      )),
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
    required this.size,
    required this.isGive,
    required this.isPay,
    required this.isSecondaryPay,
  });

  final Size size;
  final bool isPay;
  final bool isGive;
  final bool isSecondaryPay;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
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
            if (ref.watch(amountProvider) >= 0) {
              if (!isGive && !isSecondaryPay) {
                log('Recalled');
                BlocProvider.of<TransactionsBloc>(context).add(
                    TransactionsEvent.addGetTransctions(
                        transactionDetails:
                            ref.watch(transactionDetailsProvider).isEmpty
                                ? null
                                : ref.watch(transactionDetailsProvider),
                        fromContactId: ref.watch(fromContactIdProvider),
                        toContactId: ref.watch(toContactIdProvider),
                        amount: ref.watch(amountProvider),
                        isPayed: isPay,
                        transactionType: ref.watch(transactionTypeProvider),
                        timeOfTrans: ref.watch(dateProvider),
                        billImage: ref.watch(imageProvider).path.isEmpty
                            ? null
                            : ref.watch(imageProvider),
                        transactionId: ref.watch(transactionIdProvider).isEmpty
                            ? null
                            : ref.watch(transactionIdProvider)));
              } else if (isGive) {
                BlocProvider.of<TransactionsBloc>(context).add(
                    TransactionsEvent.addGiveTransctions(
                        transactionDetails:
                            ref.watch(transactionDetailsProvider).isEmpty
                                ? null
                                : ref.watch(transactionDetailsProvider),
                        fromContactId: 'You',
                        toContactId: ref.watch(fromContactIdProvider),
                        amount: ref.watch(amountProvider),
                        transactionType: ref.watch(transactionTypeProvider),
                        timeOfTrans: ref.watch(dateProvider),
                        billImage: ref.watch(imageProvider).path.isEmpty
                            ? null
                            : ref.watch(imageProvider),
                        transactionId: ref.watch(transactionIdProvider).isEmpty
                            ? null
                            : ref.watch(transactionIdProvider)));
              } else if (isSecondaryPay) {
                log('Okays');
                BlocProvider.of<TransactionsBloc>(context).add(
                    TransactionsEvent.addSecondaryPartyPayment(
                        amountPayed: ref.watch(amountProvider),
                        payedToId: ref.watch(toContactIdProvider),
                        primaryContactId: ref.watch(fromContactIdProvider),
                        secondaryContactId:
                            ref.watch(secondaryContactIdProvider),
                        transactionDetails:
                            ref.watch(transactionDetailsProvider).isEmpty
                                ? null
                                : ref.watch(transactionDetailsProvider),
                        transactionType: ref.watch(transactionTypeProvider),
                        timeOfTrans: ref.watch(dateProvider),
                        billImage: ref.watch(imageProvider).path.isEmpty
                            ? null
                            : ref.watch(imageProvider),
                        transactionId: ref.watch(transactionIdProvider).isEmpty
                            ? null
                            : ref.watch(transactionIdProvider)));
              }
            }

            Navigator.pop(context);
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
