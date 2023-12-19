import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:linq_pe/application/ledger/ledger_bloc.dart';
import 'package:linq_pe/presentation/screens/add_amount/screen_add_amount.dart';
import 'package:linq_pe/presentation/screens/add_split_amount/screen_add_split_amount.dart';
import 'package:linq_pe/presentation/screens/select_party/screen_select_party.dart';
import 'package:linq_pe/presentation/view_state/add_amount_riverpod/add_amount.dart';
import 'package:linq_pe/presentation/view_state/add_split_amount/add_split_amount.dart';
import 'package:linq_pe/presentation/view_state/ledger/ledger.dart';
import 'package:linq_pe/presentation/view_state/search_riverpod/search.dart';
import 'package:linq_pe/presentation/view_state/view_party_riverpod.dart/view_party.dart';
import 'package:linq_pe/presentation/widgets/click_button.dart';
import 'package:linq_pe/utilities/colors.dart';

class FloatingAddButton extends ConsumerStatefulWidget {
  const FloatingAddButton({
    super.key,
    required this.paddingHorizontal,
    required this.buttonName,
    required this.partyType,
    required this.partyColor,
    required this.heroTag,
  });
  final String buttonName;
  final String partyType;
  final Color partyColor;
  final String heroTag;
  final double paddingHorizontal;

  @override
  FloatingAddButtonState createState() => FloatingAddButtonState();
}

class FloatingAddButtonState extends ConsumerState<FloatingAddButton> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final TextEditingController ledgerNameController = TextEditingController();

    return FloatingActionButton.extended(
      extendedPadding:
          EdgeInsets.symmetric(horizontal: widget.paddingHorizontal),
      heroTag: widget.heroTag,
      backgroundColor: widget.partyColor,
      onPressed: () {
        contactSearch('', ref);
        if (widget.partyType == 'Customer') {
          addfromContactId('', ref);
          Navigator.push(
              context,
              CupertinoPageRoute(
                builder: (context) => SelectPartyScreen(
                  ledgerId: ref.watch(currentLedgerIdProvider),
                  partyColor: widget.partyColor,
                  partyType: widget.partyType,
                ),
              ));
        } else if (widget.partyType == 'Pay') {
          addfromContactId('', ref);
          addPrimaryBalanceAmount(0.0, ref);
          addToContactId('', ref);
          Navigator.push(
              context,
              CupertinoPageRoute(
                builder: (context) => AddAmountScreen(
                    isRepay: false,
                    ledgerId: ref.watch(currentLedgerIdProvider),
                    isAddExpense: true,
                    isPay: false,
                    isAddBalance: false,
                    partyName: '',
                    isSplit: false,
                    isSecondaryPay: false,
                    isGive: false),
              ));
        } else if (widget.partyType == 'Split') {
          splitInitialize(ref);
          Navigator.push(
              context,
              CupertinoPageRoute(
                builder: (context) => AddSplitAmountScreen(
                  ledgerId: ref.watch(currentLedgerIdProvider),
                ),
              ));
        } else if (widget.partyType == 'Ledger') {
          addledgerNameTexfieldHeight(size.height * 0.25, ref);
          showModalBottomSheet(
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(150),
                topRight: Radius.circular(150),
              ),
            ),
            context: context,
            builder: (context) {
              return AddLedgerWidget(
                size: size,
                ledgerNameController: ledgerNameController,
              );
            },
          );
        } else if (widget.partyType == 'Roll Ledger') {
          Navigator.push(
              context,
              CupertinoPageRoute(
                builder: (context) => AddAmountScreen(
                    isPay: false,
                    isLedgerRoll: true,
                    isAddBalance: false,
                    partyName: '',
                    isSplit: false,
                    isSecondaryPay: false,
                    isGive: false,
                    ledgerId: ref.watch(currentLedgerIdProvider),
                    isRepay: false),
              ));
        }
      },
      label: Row(
        children: [
          Icon(
            widget.partyType == 'Roll Ledger'
                ? Icons.recycling
                : widget.partyType == 'Ledger'
                    ? Icons.bookmark_add
                    : widget.partyType == 'Pay'
                        ? Icons.currency_rupee
                        : Icons.person_add,
            color: LinqPeColors.kWhiteColor,
          ),
          SizedBox(
            width: size.width * 0.001,
          ),
          Text(
            widget.buttonName,
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
      ),
    );
  }
}

class AddLedgerWidget extends ConsumerStatefulWidget {
  const AddLedgerWidget({
    super.key,
    required this.size,
    required this.ledgerNameController,
  });

  final Size size;
  final TextEditingController ledgerNameController;

  @override
  AddLedgerWidgetState createState() => AddLedgerWidgetState();
}

class AddLedgerWidgetState extends ConsumerState<AddLedgerWidget> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Container(
      width: widget.size.width,
      height: ref.watch(ledgerNameTexfieldHeightProvider),
      decoration: BoxDecoration(
        color: LinqPeColors.kPinkColor,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(
              ref.watch(ledgerNameTexfieldHeightProvider) == size.height * 0.25
                  ? 0
                  : 150),
          topRight: Radius.circular(
              ref.watch(ledgerNameTexfieldHeightProvider) == size.height * 0.25
                  ? 0
                  : 150),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            height: ref.watch(ledgerNameTexfieldHeightProvider) ==
                    size.height * 0.25
                ? size.height * 0.05
                : size.height * 0.0,
          ),
          Container(
            width: widget.size.width * 0.8,
            height: size.height * 0.07,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: LinqPeColors.kWhiteColor),
            padding: EdgeInsets.symmetric(horizontal: widget.size.width * 0.1),
            child: Focus(
              onFocusChange: (focus) {
                if (focus == false) {
                  addledgerNameTexfieldHeight(widget.size.height * 0.25, ref);
                }
              },
              child: TextFormField(
                  onTap: () {
                    addledgerNameTexfieldHeight(widget.size.height, ref);
                  },
                  style: TextStyle(fontSize: size.height * 0.022),
                  cursorColor: LinqPeColors.kBlackColor,
                  controller: widget.ledgerNameController,
                  showCursor: true,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Enter new ledger name...',
                    hintStyle: TextStyle(
                      color: LinqPeColors.kBlackColor.withOpacity(0.6),
                    ),

                    filled: true,
                    // floatingLabelBehavior: widget.floatingLabelBehavior,
                    fillColor: LinqPeColors.kWhiteColor,
                  )),
            ),
          ),
          SizedBox(
            height: size.height * 0.01,
          ),
          ClickButton(
            textColor: LinqPeColors.kPinkColor,
            onTap: () {
              if (widget.ledgerNameController.text.trim().isNotEmpty) {
                BlocProvider.of<LedgerBloc>(context).add(LedgerEvent.addLedgers(
                    ledgerName: widget.ledgerNameController.text));
                Navigator.pop(context);
              }
            },
            height: size.height * 0.04,
            width: widget.size.width * 0.4,
            text: 'ADD LEDGER',
            radius: 5,
            backGroundColor: LinqPeColors.kWhiteColor,
            changeColor: LinqPeColors.kWhiteColor.withOpacity(0.5),
          ),
        ],
      ),
    );
  }
}
