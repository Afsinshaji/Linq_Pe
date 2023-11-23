import 'dart:typed_data';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:linq_pe/application/contacts/contacts_bloc.dart';

import 'package:linq_pe/application/party/customer/customer_bloc.dart';
import 'package:linq_pe/presentation/view_state/add_amount_riverpod/add_amount.dart';
import 'package:linq_pe/presentation/view_state/search_riverpod/search.dart';
import 'package:linq_pe/application/view_dto/contact/contact_dto.dart';
import 'package:linq_pe/presentation/screens/home/widgets/floating_add_button.dart';
import 'package:linq_pe/presentation/screens/view_party/screen_view_party.dart';

import 'package:linq_pe/utilities/colors.dart';
import 'package:motion/motion.dart';

class CustomersTabView extends StatefulWidget {
  const CustomersTabView({super.key});

  @override
  State<CustomersTabView> createState() => _CustomersTabViewState();
}

class _CustomersTabViewState extends State<CustomersTabView> {
  List<ContactsDTO> partyList = [];
  @override
  void initState() {
    super.initState();
    BlocProvider.of<ContactsBloc>(context).add(ContactsEvent.getContacts());
    BlocProvider.of<CustomerBloc>(context)
        .add(const CustomerEvent.getCustomerList());
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      floatingActionButton: const FloatingAddButton(
        buttonName: 'Add Party',
        partyColor: LinqPeColors.kPinkColor,
        partyType: 'Customer',
      ),
      backgroundColor: LinqPeColors.kPinkColor,
      body: BlocBuilder<CustomerBloc, CustomerState>(
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
                Motion(
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
                          const AmountNotifier(
                              iconColor: LinqPeColors.kBlueColor,
                              textSign: 'You will get',
                              amount: '9000000.0'),
                          Container(
                            width: size.width * 0.001,
                            height: size.width * 0.15,
                            color: LinqPeColors.kWhiteColor,
                          ),
                          const AmountNotifier(
                              iconColor: LinqPeColors.kredColor,
                              textSign: 'You will give',
                              amount: '9000000.0')
                        ],
                      ),
                    ),
                  ),
                ),
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
                        child:
                            HomePartyList(listOfParties: partyList, size: size),
                      )
              ],
            ),
          );
        },
      ),
    );
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
    return ListView.separated(
      // shrinkWrap: true,
      itemBuilder: (context, index) {
        return EachListTile(
          avatar: partyList[index].avatar,
          onTap: () {
            ref.read(fromContactIdProvider.notifier).state =
                partyList[index].contactId;
            Navigator.push(
                context,
                CupertinoPageRoute(
                  builder: (context) =>
                      ViewPartyScreen(contact: partyList[index]),
                ));
          },
          size: size,
          amount: '0',
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
      required this.avatar});

  final Size size;
  final String initials;
  final String name;
  final String amount;
  final Function() onTap;
  final Uint8List? avatar;

  @override
  Widget build(BuildContext context) {
    return ListTile(
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
        '10 seconds ago',
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
            'you will give',
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
          child: const Icon(
            Icons.currency_rupee,
            color: LinqPeColors.kWhiteColor,
          ),
        ),
        SizedBox(
          width: size.width * 0.02,
        ),
        Column(
          children: [
            Text(
              textSign,
              style: GoogleFonts.poppins(
                textStyle: TextStyle(
                  letterSpacing: .5,
                  fontSize: size.width * 0.03,
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
                  fontSize: size.width * 0.045,
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
