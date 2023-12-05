import 'dart:developer';
import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:linq_pe/application/party/customer/customer_bloc.dart';
import 'package:linq_pe/application/transactions/transactions_bloc.dart';
import 'package:linq_pe/application/view_dto/contact/contact_dto.dart';
import 'package:linq_pe/application/view_dto/transaction/secondary_transaction_dto.dart';
import 'package:linq_pe/domain/models/transactions/transaction_type.dart';
import 'package:linq_pe/presentation/screens/add_amount/screen_add_amount.dart';
import 'package:linq_pe/presentation/screens/each_transaction/widgets/image_screen.dart';
import 'package:linq_pe/presentation/view_state/add_amount_riverpod/add_amount.dart';
import 'package:linq_pe/presentation/widgets/alert_box.dart';
import 'package:linq_pe/utilities/colors.dart';
import 'package:linq_pe/utilities/list.dart';
import 'package:screenshot/screenshot.dart';
import 'package:share_plus/share_plus.dart';

class EachTransactionScreen extends StatelessWidget {
  EachTransactionScreen({
    super.key,
    required this.transaction,
    required this.contact,
    required this.toName,
    this.isSecondaryParty = false,
    this.secondaryPartyName = '',
  });
  final NestedSecondaryTransactionsDTO transaction;
  final ContactsDTO contact;
  final String toName;
  final bool isSecondaryParty;
  final String secondaryPartyName;

  //Create an instance of ScreenshotController
  final ScreenshotController screenshotController = ScreenshotController();
  @override
  Widget build(BuildContext context) {
    // int counter = 0;
    // late Uint8List imageFile;
    final Size size = MediaQuery.of(context).size;
    final transactionEntryString = transactionEntry(
      transaction,
      toName,
      contact.displayName,
    );
    log('image${transaction.billImage}');
    return Scaffold(
        appBar: PreferredSize(
            preferredSize: size * 0.7,
            child: Container(
              color: LinqPeColors.kPinkColor,
              padding: EdgeInsets.only(
                left: size.width * 0.05,
                right: size.width * 0.05,
                top: size.height * 0.03,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      IconButton(
                          onPressed: () async {
                            Navigator.pop(context);
                          },
                          icon: Icon(
                            Icons.arrow_back,
                            color: LinqPeColors.kWhiteColor,
                            size: size.width * 0.08,
                          )),
                      Padding(
                        padding: EdgeInsets.all(size.width * 0.03),
                        child: Text('Entry details',
                            style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                overflow: TextOverflow.ellipsis,
                                letterSpacing: .5,
                                fontSize: size.width * 0.06,
                                color: LinqPeColors.kWhiteColor,
                                fontWeight: FontWeight.w600,
                              ),
                            )),
                      ),
                    ],
                  ),
                  Screenshot(
                    controller: screenshotController,
                    child: Container(
                      padding: EdgeInsets.all(size.width * 0.05),
                      decoration: BoxDecoration(
                          color: LinqPeColors.kWhiteColor,
                          borderRadius: BorderRadius.circular(5)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              (contact.avatar != null &&
                                      contact.avatar!.isNotEmpty)
                                  ? Container(
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                            color: LinqPeColors.kWhiteColor
                                                .withOpacity(0.5),
                                            width: size.width * 0.005,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(100)),
                                      child: CircleAvatar(
                                          radius: size.width * 0.06,
                                          backgroundImage:
                                              MemoryImage(contact.avatar!)),
                                    )
                                  : CircleAvatar(child: Text(contact.initails)),
                              Column(
                                children: [
                                  SizedBox(
                                    width: size.width * 0.4,
                                    child: Text(contact.displayName,
                                        style: GoogleFonts.poppins(
                                          textStyle: TextStyle(
                                            overflow: TextOverflow.ellipsis,
                                            letterSpacing: .5,
                                            fontSize: size.width * 0.05,
                                            color: LinqPeColors.kBlackColor,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        )),
                                  ),
                                  Text(
                                      '${transaction.timeOfTrans.day} ${LinqPeList.monthNames[transaction.timeOfTrans.month - 1]} ${transaction.timeOfTrans.year} . ${transaction.timeOfTrans.hour}:${transaction.timeOfTrans.minute}',
                                      style: GoogleFonts.roboto(
                                        textStyle: TextStyle(
                                          letterSpacing: .5,
                                          fontSize: size.width * 0.03,
                                          color: LinqPeColors.kBlackColor,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      )),
                                ],
                              ),
                              Column(
                                children: [
                                  Text(transaction.givenAmt.toString(),
                                      style: GoogleFonts.poppins(
                                        textStyle: TextStyle(
                                          overflow: TextOverflow.ellipsis,
                                          letterSpacing: .5,
                                          fontSize: size.width * 0.05,
                                          color: LinqPeColors.kBlackColor,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      )),
                                  Text(typeOfTransactiom(transaction),
                                      style: GoogleFonts.roboto(
                                        textStyle: TextStyle(
                                          letterSpacing: .5,
                                          fontSize: size.width * 0.028,
                                          color: LinqPeColors.kBlackColor,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      )),
                                ],
                              ),
                            ],
                          ),
                          Divider(
                            color: LinqPeColors.kBlackColor.withOpacity(0.3),
                          ),
                          Align(
                            alignment: Alignment.center,
                            child: Text(transactionEntryString,
                                style: GoogleFonts.roboto(
                                  textStyle: TextStyle(
                                    overflow: TextOverflow.ellipsis,
                                    letterSpacing: .5,
                                    fontSize: size.width * 0.04,
                                    color: LinqPeColors.kBlackColor,
                                    fontWeight: FontWeight.w500,
                                  ),
                                )),
                          ),
                          isSecondaryParty
                              ? const SizedBox()
                              : Divider(
                                  color:
                                      LinqPeColors.kBlackColor.withOpacity(0.3),
                                ),
                          isSecondaryParty
                              ? const SizedBox()
                              : Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text('Running Balance',
                                        style: GoogleFonts.roboto(
                                          textStyle: TextStyle(
                                            letterSpacing: .5,
                                            fontSize: size.width * 0.033,
                                            color: LinqPeColors.kBlackColor,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        )),
                                    Text(transaction.balanceAmt.toString(),
                                        style: GoogleFonts.roboto(
                                          textStyle: TextStyle(
                                            letterSpacing: .5,
                                            fontSize: size.width * 0.033,
                                            color: LinqPeColors.kBlackColor,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        )),
                                  ],
                                ),
                          Divider(
                            color: LinqPeColors.kBlackColor.withOpacity(0.3),
                          ),
                          Text('Photo Attachments',
                              style: GoogleFonts.roboto(
                                textStyle: TextStyle(
                                  letterSpacing: .5,
                                  fontSize: size.width * 0.028,
                                  color: LinqPeColors.kGreyColor,
                                  fontWeight: FontWeight.w500,
                                ),
                              )),
                          SizedBox(
                            height: size.height * 0.01,
                          ),
                          transaction.billImage == null
                              ? const SizedBox()
                              : Container(
                                  height: size.height * 0.08,
                                  width: size.width * 0.2,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: FileImage(
                                              transaction.billImage!))),
                                  child: InkWell(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          CupertinoPageRoute(
                                            builder: (context) => ImageScreen(
                                                billImage:
                                                    transaction.billImage!),
                                          ));
                                    },
                                  ),
                                ),
                          SizedBox(
                            height: size.height * 0.01,
                          ),
                          Text('Transaction Details',
                              style: GoogleFonts.roboto(
                                textStyle: TextStyle(
                                  letterSpacing: .5,
                                  fontSize: size.width * 0.028,
                                  color: LinqPeColors.kGreyColor,
                                  fontWeight: FontWeight.w500,
                                ),
                              )),
                          SizedBox(
                            height: size.height * 0.01,
                          ),
                          transaction.transactionDetails == null
                              ? const SizedBox()
                              : Text(transaction.transactionDetails!,
                                  style: GoogleFonts.roboto(
                                    textStyle: TextStyle(
                                      letterSpacing: .5,
                                      fontSize: size.width * 0.033,
                                      color: LinqPeColors.kBlackColor,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  )),
                          SizedBox(
                            height: size.height * 0.01,
                          ),
                          Text('Transaction Id',
                              style: GoogleFonts.roboto(
                                textStyle: TextStyle(
                                  letterSpacing: .5,
                                  fontSize: size.width * 0.028,
                                  color: LinqPeColors.kGreyColor,
                                  fontWeight: FontWeight.w500,
                                ),
                              )),
                          SizedBox(
                            height: size.height * 0.01,
                          ),
                          transaction.transactionId == null
                              ? const SizedBox()
                              : Text(transaction.transactionId!,
                                  style: GoogleFonts.roboto(
                                    textStyle: TextStyle(
                                      letterSpacing: .5,
                                      fontSize: size.width * 0.033,
                                      color: LinqPeColors.kBlackColor,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  )),
                          SizedBox(
                            height: size.height * 0.01,
                          ),
                          Text('Transaction Type',
                              style: GoogleFonts.roboto(
                                textStyle: TextStyle(
                                  letterSpacing: .5,
                                  fontSize: size.width * 0.028,
                                  color: LinqPeColors.kGreyColor,
                                  fontWeight: FontWeight.w500,
                                ),
                              )),
                          SizedBox(
                            height: size.height * 0.01,
                          ),
                          Text(
                              transactionTypeString(
                                  transaction.transactionType),
                              style: GoogleFonts.roboto(
                                textStyle: TextStyle(
                                  letterSpacing: .5,
                                  fontSize: size.width * 0.033,
                                  color: LinqPeColors.kBlackColor,
                                  fontWeight: FontWeight.w400,
                                ),
                              )),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: size.height * 0.03,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {


  alertBox(context,'Delete Transaction',(){ 
 BlocProvider.of<TransactionsBloc>(context).add(
                              TransactionsEvent.deleteTransactions(
                                  transactionRealId: transaction.id,
                                  primaryContactId: contact.contactId));
      Navigator.pop(context);
       Navigator.pop(context);

  },size);

                         
                    
                        },
                        child: Container(
                          width: size.width * 0.43,
                          decoration: BoxDecoration(
                              color: LinqPeColors.kWhiteColor,
                              border: Border.all(
                                  color: LinqPeColors.kredColor,
                                  width: size.width * 0.005),
                              borderRadius: BorderRadius.circular(5)),
                          padding: EdgeInsets.symmetric(
                              vertical: size.height * 0.014,
                              horizontal: size.width * 0.1),
                          child: Row(
                            children: [
                              Icon(
                                Icons.delete_outline_outlined,
                                color: LinqPeColors.kredColor,
                                size: size.width * 0.05,
                              ),
                              Text('DELETE',
                                  style: GoogleFonts.roboto(
                                    textStyle: TextStyle(
                                      letterSpacing: .5,
                                      fontSize: size.width * 0.045,
                                      color: LinqPeColors.kredColor,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  )),
                            ],
                          ),
                        ),
                      ),
                      TransactionEditButton(
                        contactId: contact.contactId,
                          partyName: contact.displayName,
                          size: size,
                          transaction: transaction)
                    ],
                  )
                ],
              ),
            )),
        bottomSheet: ColoredBox(
          color: LinqPeColors.kWhiteColor,
          child: Container(
            margin: EdgeInsets.symmetric(
                horizontal: size.width * 0.05, vertical: size.width * 0.05),
            height: size.height * 0.065,
            width: size.width,
            decoration: const BoxDecoration(color: LinqPeColors.kPinkColor),
            child: InkWell(
              onTap: () async {
                await captureAndShare(transactionEntryString);
              },
              child: Center(
                  child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.share,
                    color: LinqPeColors.kWhiteColor,
                    size: size.width * 0.05,
                  ),
                  SizedBox(
                    width: size.width * 0.01,
                  ),
                  Text(
                    'SHARE',
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        letterSpacing: .5,
                        fontSize: size.width * 0.04,
                        color: LinqPeColors.kWhiteColor,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              )),
            ),
          ),
        ));
  }

  String typeOfTransactiom(NestedSecondaryTransactionsDTO transaction) {
    if (transaction.isAddBalance) {
      return 'You Added Balance';
    } else if (transaction.isGet) {
      return 'You Got';
    } else if (transaction.isGive) {
      return 'You Gave';
    } else if (transaction.isPayed) {
      return 'Payed';
    } else if (transaction.isSplit) {
      return 'Splitted';
    } else {
      return '';
    }
  }

  String transactionEntry(
    NestedSecondaryTransactionsDTO transaction,
    String toName,
    String contactName,
  ) {
    if (transaction.isAddBalance) {
      return 'You Added Balance of ₹ ${transaction.givenAmt} to $contactName';
    } else if (transaction.isGet) {
      return 'You Got ₹ ${transaction.givenAmt} from $toName';
    } else if (transaction.isGive) {
      return 'You Gave ₹ ${transaction.givenAmt} to $contactName';
    } else if (transaction.isPayed) {
      if (isSecondaryParty) {
        return '$secondaryPartyName payed ₹ ${transaction.givenAmt} to $toName';
      }
      return 'You payed ₹ ${transaction.givenAmt} to $toName';
    } else if (transaction.isSplit) {
      return 'You Splitted ₹ ${transaction.givenAmt} to $toName';
    } else {
      return '';
    }
  }

  Future<void> captureAndShare(String transaction) async {
    await screenshotController.capture().then((Uint8List? image) async {
      if (image != null) {
        final imageFile = await uint8ListToFile(image);

        // Use the share package to share the image
        Share.shareXFiles([XFile(imageFile!.path)],
            text: transaction,
            subject: 'Screenshot',
            sharePositionOrigin: Rect.fromPoints(Offset.zero, Offset.zero));
      }
    });
  }

  String transactionTypeString(TransactionTypes transactionType) {
    if (transactionType == TransactionTypes.cash) {
      return 'cash';
    } else if (transactionType == TransactionTypes.bank) {
      return 'bank';
    } else {
      return 'wallet';
    }
  }

  //  {
  //   await screenshotController.capture().then((image) async {
  //     if (image != null) {
  //       final imageFile = await uint8ListToFile(image);

  //       String whatsappUrl =
  //           'whatsapp://send?text=Check out my screenshot!&phone=$phoneNumber&attachment=${imageFile!.path}';

  //       await launchUrl(Uri.parse(whatsappUrl));
  //     }
  //   });
  // }
}

class TransactionEditButton extends ConsumerWidget {
  const TransactionEditButton(
      {super.key,
      required this.size,
      required this.transaction,
      required this.partyName,required this.contactId,});

  final Size size;
  final NestedSecondaryTransactionsDTO transaction;
  final String partyName;
  final String contactId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return InkWell(
      onTap: () {
        addTime(transaction.timeOfTrans, ref);
        addImage(
            transaction.billImage == null ? File('') : transaction.billImage!,
            ref);

        addTransactionType(transaction.transactionType, ref);
        addToContactId(transaction.toContactId, ref);

        Navigator.push(
            context,
            CupertinoPageRoute(
              builder: (context) => AddAmountScreen(
                transactionRealId: transaction.id,
                primaryContactId: contactId,
                  editTransaction: transaction,
                  isEdit: true,
                  isPay: transaction.isPayed,
                  isAddBalance: transaction.isAddBalance,
                  partyName: partyName,
                  isSplit: transaction.isSplit,
                  isSecondaryPay: false,
                  isGive: transaction.isGive),
            ));
      },
      child: Container(
        alignment: Alignment.center,
        width: size.width * 0.43,
        decoration: BoxDecoration(
            color: LinqPeColors.kWhiteColor,
            border: Border.all(
                color: LinqPeColors.kGreenColor, width: size.width * 0.005),
            borderRadius: BorderRadius.circular(5)),
        padding: EdgeInsets.symmetric(
            vertical: size.height * 0.014, horizontal: size.width * 0.1),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.edit_outlined,
              color: LinqPeColors.kGreenColor,
              size: size.width * 0.05,
            ),
            Text('EDIT',
                style: GoogleFonts.roboto(
                  textStyle: TextStyle(
                    letterSpacing: .5,
                    fontSize: size.width * 0.045,
                    color: LinqPeColors.kGreenColor,
                    fontWeight: FontWeight.w500,
                  ),
                )),
          ],
        ),
      ),
    );
  }
}

 

  // Optionally, save the image to a file
  // Future<File> saveImageToFile(Uint8List imageBytes) async {
  //   Directory tempDir = await getTemporaryDirectory();
  //   File imageFile = File('${tempDir.path}/screenshot.png');
  //   await imageFile.writeAsBytes(imageBytes);
  //   return imageFile;
  // }

// screenshotController.capture().then((Uint8List image) {
//     //Capture Done
//     setState(() {
//         _imageFile = image;
//     });
// }).catchError((onError) {
//     print(onError);
// });