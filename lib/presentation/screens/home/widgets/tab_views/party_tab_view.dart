import 'dart:developer';
import 'dart:typed_data';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:linq_pe/application/contacts/contacts_bloc.dart';
import 'package:linq_pe/application/ledger/ledger_bloc.dart';

import 'package:linq_pe/application/party/customer/customer_bloc.dart';
import 'package:linq_pe/application/splitted/splitted_bloc.dart';
import 'package:linq_pe/application/view_dto/ledger/ledger.dart';
import 'package:linq_pe/application/view_dto/splitted/splitted.dart';
import 'package:linq_pe/presentation/view_state/add_amount_riverpod/add_amount.dart';
import 'package:linq_pe/presentation/view_state/home_riverpod/home_riverpod.dart';
import 'package:linq_pe/presentation/view_state/ledger/ledger.dart';
import 'package:linq_pe/presentation/view_state/search_riverpod/search.dart';
import 'package:linq_pe/application/view_dto/contact/contact_dto.dart';
import 'package:linq_pe/presentation/screens/home/widgets/floating_add_button.dart';
import 'package:linq_pe/presentation/screens/view_party/screen_view_party.dart';
import 'package:linq_pe/presentation/widgets/alert_box.dart';

import 'package:linq_pe/utilities/colors.dart';
import 'package:motion/motion.dart';

class PartyTabView extends StatefulWidget {
  const PartyTabView({super.key, required this.ledgerId});
  final String ledgerId;

  @override
  State<PartyTabView> createState() => _PartyTabViewState();
}

class _PartyTabViewState extends State<PartyTabView> {
  List<ContactsDTO> partyList = [];
  @override
  void initState() {
    super.initState();
    BlocProvider.of<ContactsBloc>(context)
        .add(ContactsEvent.getContacts(ledgerId: widget.ledgerId));
    BlocProvider.of<CustomerBloc>(context)
        .add(CustomerEvent.getCustomerList(ledgerId: widget.ledgerId));
    BlocProvider.of<SplittedBloc>(context)
        .add(SplittedEvent.getSplittedList(ledgerId: widget.ledgerId));
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      floatingActionButton: Padding(
        padding: EdgeInsets.only(top: size.height * 0.6),
        child: Column(
          children: [
            FloatingAddButton(
              paddingHorizontal: size.width * 0.13,
              buttonName: ' Split',
              partyColor: LinqPeColors.kPinkColor,
              partyType: 'Split',
              heroTag: 'hero split',
            ),
            SizedBox(
              height: size.height * 0.01,
            ),
            FloatingAddButton(
              paddingHorizontal: size.width * 0.05,
              buttonName: 'Add Expense',
              partyColor: LinqPeColors.kPinkColor,
              partyType: 'Pay',
              heroTag: 'hero pay',
            ),
            SizedBox(
              height: size.height * 0.01,
            ),
            FloatingAddButton(
              paddingHorizontal: size.width * 0.08,
              heroTag: 'hero addParty',
              buttonName: ' Add Party',
              partyColor: LinqPeColors.kPinkColor,
              partyType: 'Customer',
            ),
          ],
        ),
      ),
      backgroundColor: LinqPeColors.kPinkColor,
      body: BlocBuilder<SplittedBloc, SplittedState>(
        builder: (context, splittedstate) {
          List<SplittedAccountsModelDTO> splittedAccountList = [];
          if (splittedstate is displaySplittedAccounts) {
            splittedAccountList = splittedstate.splittedAccountList;
          }
          return BlocBuilder<CustomerBloc, CustomerState>(
            builder: (context, state) {
              if (state is displayCustomerList) {
                partyList = state.customers;
              }

              return Container(
                // margin: EdgeInsets.all(size.width * 0.03),
                padding: EdgeInsets.all(size.width * 0.03),
                decoration: const BoxDecoration(
                  color: LinqPeColors.kWhiteColor,
                  // borderRadius: BorderRadius.circular(30),
                ),
                child: Column(
                  children: [
                    AmountNotifierRowMotionWidget(
                        splittedAccountList: splittedAccountList,
                        size: size,
                        partyList: partyList),
                    SizedBox(
                      height: size.height * 0.01,
                    ),
                    SearchRow(size: size, color: LinqPeColors.kPinkColor),
                    partyList.isEmpty
                        ? Center(
                            child: Padding(
                              padding: EdgeInsets.only(top: size.height * 0.05),
                              child: Image.asset(
                                  'assets/gif/dazzle-online-banking.gif'),
                            ),
                          )
                        : Expanded(
                            child: HomePartyList(
                                listOfParties: partyList, size: size),
                          )
                  ],
                ),
              );
            },
          );
        },
      ),
    );
  }
}

class AmountNotifierRowMotionWidget extends ConsumerWidget {
  const AmountNotifierRowMotionWidget(
      {super.key,
      required this.size,
      required this.partyList,
      required this.splittedAccountList});
  final List<SplittedAccountsModelDTO> splittedAccountList;

  final Size size;
  final List<ContactsDTO> partyList;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    String rolledBalance = '0.0';
    String balance = '0.0';
    // getTotalBalance(partyList, splittedAccountList);
    String payed = '0.0';
    // getTotalPayment(partyList, splittedAccountList);
    // WidgetsBinding.instance.addPostFrameCallback((timeStamp) {

    // });
    return BlocBuilder<LedgerBloc, LedgerState>(
      builder: (context, ledgerstate) {
        List<LedgerDTO> ledgerList = [];
        if (ledgerstate is displayLedgers) {
          ledgerList = ledgerstate.ledgerList;
        }
        final ledgerIndex = ledgerList.indexWhere((element) =>
            element.ledgerId == ref.watch(currentLedgerIdProvider));
        if (ledgerIndex >= 0) {
          if (ledgerList[ledgerIndex].totalBlanceAmount != null) {
            balance = ledgerList[ledgerIndex].totalBlanceAmount.toString();
          }
          if (ledgerList[ledgerIndex].totalPayedAmount != null) {
            payed = ledgerList[ledgerIndex].totalPayedAmount.toString();
          }
          if (ledgerList[ledgerIndex].rolledOutBalance != null) {
            rolledBalance = ledgerList[ledgerIndex].rolledOutBalance.toString();
          }
        }
        return Motion(
          shadow: const ShadowConfiguration(
            color: LinqPeColors.kPinkColor,
            blurRadius: 0,
          ),
          child: Material(
            shadowColor: LinqPeColors.kPinkColor,
            elevation: 7,
            color: LinqPeColors.kPinkColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50),
            ),
            child: Padding(
              padding: EdgeInsets.all(size.width * 0.01),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  AmountNotifier(
                      iconColor: LinqPeColors.kGreenColor,
                      textSign: 'Total balance',
                      amount: rolledBalance),
                  Container(
                    width: size.width * 0.001,
                    height: size.width * 0.15,
                    color: LinqPeColors.kWhiteColor,
                  ),
                  AmountNotifier(
                      iconColor: LinqPeColors.kBlueColor,
                      textSign: 'Actual balance',
                      amount: balance),
                  Container(
                    width: size.width * 0.001,
                    height: size.width * 0.15,
                    color: LinqPeColors.kWhiteColor,
                  ),
                  AmountNotifier(
                      iconColor: LinqPeColors.kredColor,
                      textSign: 'Total payed',
                      amount: payed)
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  String getTotalBalance(List<ContactsDTO> partyList,
      List<SplittedAccountsModelDTO> splittedAccountList) {
    double balance = 0.0;
    for (var party in partyList) {
      if (party.blanceAmount != null) {
        balance = balance + party.blanceAmount!;
      }
    }
    for (var split in splittedAccountList) {
      balance = balance + split.balanceAmt;
    }
    return balance.toString();
  }

  String getTotalPayment(List<ContactsDTO> partyList,
      List<SplittedAccountsModelDTO> splittedAccountList) {
    double payment = 0.0;
    for (var party in partyList) {
      if (party.payedAmount != null) {
        payment = payment + party.payedAmount!;
      }
    }
    for (var split in splittedAccountList) {
      payment = payment + split.balanceAmt;
    }
    return payment.toString();
  }
}

class HomePartyList extends ConsumerWidget {
  const HomePartyList({
    super.key,
    required this.listOfParties,
    required this.size,
  });

  final List<ContactsDTO> listOfParties;
  final Size size;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    String search = ref.watch(homeSearchProvider);
    List<ContactsDTO> partyList = listOfParties;
    if (search.isNotEmpty) {
      partyList = listOfParties
          .where((element) => element.displayName
              .toLowerCase()
              .contains(search.toLowerCase().trim()))
          .toList();
    }
    //sort according to time and reverse it
    final List<ContactsDTO> sortingPartyList = List.from(partyList);
    sortingPartyList.sort(
        (a, b) => a.lastTimeOfTransaction!.compareTo(b.lastTimeOfTransaction!));
    partyList = sortingPartyList.reversed.toList();
    return ListView.separated(
      // shrinkWrap: true,
      itemBuilder: (context, index) {
        return EachListTile(
          ledgerId: partyList[index].ledgerId,
          contactId: partyList[index].contactId,
          lastTimeofTransaction: partyList[index].lastTimeOfTransaction,
          avatar: partyList[index].avatar,
          onTap: () {
            contactSearch('', ref);
            ref.read(fromContactIdProvider.notifier).state =
                partyList[index].contactId;
            Navigator.push(
                context,
                CupertinoPageRoute(
                  builder: (context) => ViewPartyScreen(
                      contact: partyList[index], isExpense: false),
                ));
          },
          size: size,
          amount: partyList[index].blanceAmount != null
              ? partyList[index].blanceAmount.toString()
              : '0',
          initials: partyList[index].initails,
          name: partyList[index].displayName,
        );
      },
      itemCount: partyList.length,
      separatorBuilder: (context, index) => Divider(
        color: LinqPeColors.kBlackColor,
        height: size.height * 0.001,
        thickness: size.height * 0.0001,
      ),
    );
  }
}

class SearchRow extends ConsumerWidget {
  const SearchRow({
    super.key,
    required this.size,
    required this.color,
  });

  final Size size;
  final Color color;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Row(
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  border: Border.all(
                    color: LinqPeColors.kBlackColor.withOpacity(0.4),
                  )),
              child: TextField(
                onTap: (){
                  addpageValue(ref.watch(tabValueProvider), ref);
                },
                onChanged: (value) {
                  homeSearch(value, ref);

                  
                },
                // controller: searchController,

                style: GoogleFonts.openSans(
                  textStyle: const TextStyle(
                    letterSpacing: .3,
                    fontSize: 15,
                    color: LinqPeColors.kBlackColor,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                cursorColor: LinqPeColors.kBlackColor,
                cursorWidth: 1,
                cursorHeight: 20,
                decoration: InputDecoration(
                    contentPadding: const EdgeInsets.only(left: 40, right: 20),
                    prefixIcon: Padding(
                      padding: const EdgeInsets.only(right: 20.0),
                      child: IconButton(
                        onPressed: () async {},
                        icon: const Icon(Icons.search),
                        color: LinqPeColors.kBlackColor.withOpacity(0.4),
                      ),
                    ),
                    hintText: 'Search customer...',
                    hintStyle: TextStyle(
                      color: LinqPeColors.kBlackColor.withOpacity(0.4),
                    ),
                    filled: true,
                    fillColor: LinqPeColors.kWhiteColor,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30.0),
                      borderSide:
                          const BorderSide(width: 0, style: BorderStyle.none),
                    )),
              ),
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.all(size.width * 0.015),
          decoration: BoxDecoration(
            border: Border.all(color: color),
            color: LinqPeColors.kWhiteColor,
            borderRadius: BorderRadius.circular(100),
          ),
          child: Icon(Icons.download, color: color),
        )
      ],
    );
  }
}

class EachListTile extends StatelessWidget {
  const EachListTile(
      {super.key,
      required this.size,
      required this.initials,
      required this.name,
      required this.amount,
      required this.onTap,
      required this.avatar,
      required this.lastTimeofTransaction,
      required this.contactId,
      required this.ledgerId});

  final Size size;
  final String initials;
  final String name;
  final String amount;
  final Function() onTap;
  final Uint8List? avatar;
  final DateTime? lastTimeofTransaction;
  final String contactId;
  final String ledgerId;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: () {
        log('look');
        showPopupMenu(context, contactId, size, ledgerId);
      },
      onTap: onTap,
      leading: avatar != null && avatar!.isNotEmpty
          ? CircleAvatar(backgroundImage: MemoryImage(avatar!))
          : Container(
              // padding: EdgeInsets.all(size.width * 0.025),
              width: size.width * 0.1,
              height: size.width * 0.1,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: LinqPeColors.kBlackColor.withOpacity(0.05),
                  borderRadius: BorderRadius.circular(100)),
              child: Text(
                initials,
                style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                    letterSpacing: .5,
                    fontSize: size.width * 0.04,
                    color: LinqPeColors.kPinkColor,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
      title: Text(
        name,
        style: GoogleFonts.poppins(
          textStyle: TextStyle(
            letterSpacing: .5,
            fontSize: size.width * 0.045,
            color: LinqPeColors.kBlackColor,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
      subtitle: Text(
        latestTransactionTime(lastTimeofTransaction),
        style: GoogleFonts.poppins(
          textStyle: TextStyle(
            letterSpacing: .5,
            fontSize: size.width * 0.03,
            color: LinqPeColors.kBlackColor.withOpacity(0.6),
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
      trailing: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            amount,
            style: GoogleFonts.poppins(
              textStyle: TextStyle(
                letterSpacing: .5,
                fontSize: size.width * 0.045,
                color: LinqPeColors.kBlackColor,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Text(
            'balance',
            style: GoogleFonts.poppins(
              textStyle: TextStyle(
                letterSpacing: .5,
                fontSize: size.width * 0.03,
                color: LinqPeColors.kBlackColor.withOpacity(0.6),
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ],
      ),
    );
  }

  String latestTransactionTime(DateTime? lastTime) {
    if (lastTime != null) {
      DateTime dateTime = lastTime;
      int hour = dateTime.hour;

      if (hour > 12) {
        hour = hour - 12;
      }

      Duration difference = DateTime.now().difference(dateTime);

      if (difference.inMinutes > 10) {
        if (dateTime.day != DateTime.now().day &&
            dateTime.month != DateTime.now().month &&
            dateTime.year != DateTime.now().year) {
          return '${dateTime.day}/${dateTime.month}/${dateTime.year}';
        }

        return '$hour:${dateTime.minute < 10 ? '0${dateTime.minute}' : dateTime.minute}${dateTime.hour > 11 ? 'pm' : 'am'}';
      } else {
        if (difference.inMinutes == 0) {
          return 'just now';
        }
        return '${difference.inMinutes} Min ago';
      }
    } else {
      return '';
    }
  }
}

class AmountNotifier extends StatelessWidget {
  const AmountNotifier({
    super.key,
    required this.iconColor,
    required this.textSign,
    required this.amount,
  });

  final Color iconColor;
  final String textSign;
  final String amount;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          padding: EdgeInsets.all(size.width * 0.01),
          decoration: BoxDecoration(
            color: iconColor,
            borderRadius: BorderRadius.circular(100),
          ),
          child: Icon(
            Icons.currency_rupee,
            color: LinqPeColors.kWhiteColor,
            size: size.width * 0.05,
          ),
        ),
        SizedBox(
          width: size.width * 0.01,
        ),
        Column(
          children: [
            Text(
              textSign,
              style: GoogleFonts.poppins(
                textStyle: TextStyle(
                  letterSpacing: .5,
                  fontSize: size.width * 0.02,
                  color: LinqPeColors.kWhiteColor.withOpacity(0.9),
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            Text(
              amount,
              style: GoogleFonts.poppins(
                textStyle: TextStyle(
                  letterSpacing: .5,
                  fontSize: size.width * 0.04,
                  color: LinqPeColors.kWhiteColor.withOpacity(0.9),
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}

void showPopupMenu(
    BuildContext context, String contactId, Size size, String ledgerId) {
  final RenderBox overlay =
      Overlay.of(context).context.findRenderObject() as RenderBox;
  final RenderBox button = context.findRenderObject() as RenderBox;

  final RelativeRect position = RelativeRect.fromRect(
    Rect.fromPoints(
      button.localToGlobal(button.size.topRight(Offset.zero),
          ancestor: overlay),
      button.localToGlobal(button.size.bottomRight(Offset.zero),
          ancestor: overlay),
    ),
    Offset.zero & overlay.size,
  );

  showMenu(
    color: LinqPeColors.kPinkColor,
    context: context,
    position: position,
    items: [
      PopupMenuItem(
        value: 1,
        child: Row(
          children: [
            const Icon(
              Icons.delete,
              color: LinqPeColors.kWhiteColor,
            ),
            Text(
              'delete party',
              style: GoogleFonts.poppins(
                textStyle: TextStyle(
                  letterSpacing: .5,
                  color: LinqPeColors.kWhiteColor.withOpacity(0.9),
                  fontWeight: FontWeight.w700,
                ),
              ),
            )
          ],
        ),
      ),
    ],
  ).then((value) {
    if (value != null) {
      if (value == 1) {
        alertBox(context, 'Delete Party Account', () {
          BlocProvider.of<CustomerBloc>(context).add(
              CustomerEvent.deleteCustomers(
                  contactId: contactId, ledgerId: ledgerId));
          Navigator.pop(context);
        }, size);
      }
    }
  });
}
