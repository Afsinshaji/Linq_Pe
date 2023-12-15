import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:linq_pe/application/contacts/contacts_bloc.dart';
import 'package:linq_pe/application/splitted/splitted_bloc.dart';
import 'package:linq_pe/application/view_dto/contact/contact_dto.dart';
import 'package:linq_pe/application/view_dto/splitted/splitted.dart';
import 'package:linq_pe/presentation/screens/view_splitted_accounts/screen_each_primary_account.dart';
import 'package:linq_pe/presentation/screens/view_splitted_accounts/screen_view_splitted_accounts.dart';
import 'package:linq_pe/presentation/widgets/sliver_app_bar.dart';
import 'package:linq_pe/utilities/colors.dart';

class ScreenEachSplitAccount extends StatelessWidget {
  const ScreenEachSplitAccount(
      {super.key, required this.splittedAccountContactId});
  final String splittedAccountContactId;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return BlocBuilder<SplittedBloc, SplittedState>(
      builder: (context, splitstate) {
        List<SplittedAccountsModelDTO> splitList = [];
        if (splitstate is displaySplittedAccounts) {
          splitList = splitstate.splittedAccountList
              .where((element) =>
                  element.primaryAccountContactId == splittedAccountContactId)
              .toList()
              .reversed
              .toList();
        }
        return BlocBuilder<ContactsBloc, ContactsState>(
          builder: (context, contactstate) {
            List<ContactsDTO> contactList = [];
            if (contactstate is displayContacts) {
              for (var split in splitList) {
                final contactIndex = contactstate.contactList.indexWhere(
                    (element) =>
                        element.contactId == split.splittedAccountContactId);
                if (contactIndex >= 0) {
                  final contact = contactstate.contactList[contactIndex];

                  contactList.add(contact);
                }
              }
            }
            return Scaffold(
              body: CustomScrollView(
                slivers: [
                  SliverPersistentHeader(
                      pinned: true,
                      floating: true,
                      delegate: SilverCommonAppbar(
                          backgroundColor: LinqPeColors.kGreenColor,
                          titleSpacing: size.width * 0.011,
                          fontSize: size.width * 0.06,
                          screenSize: size,
                          title: 'Split Accounts',
                          onLeadingArrowPressed: () {
                            Navigator.pop(context);
                          },
                          actions: [])),
                  SliverList(
                      delegate: SliverChildListDelegate([
                    SizedBox(
                      height: size.height * 0.02,
                    )
                  ])),
                  SliverList(
                    delegate: SliverChildBuilderDelegate(
                      // shrinkWrap: true,
                      (context, index) {
                        final splittedContact = contactList[index];

                        return Column(
                          children: [
                            EachListTile(
                              splittedAvatar: splittedContact.avatar,
                              splittedinitials: splittedContact.initails,
                              splittedname: splittedContact.displayName,
                              onTap: () {
                                Navigator.push(
                                    context,
                                    CupertinoPageRoute(
                                      builder: (context) =>
                                          EachPrimaryAccountScreen(
                                              contact: splittedContact,
                                              splittedAccount:
                                                  splitList[index]),
                                    ));
                              },
                              size: size,
                              amount: splitList[index].balanceAmt.toString(),
                            ),
                            Divider(
                              color: LinqPeColors.kBlackColor,
                              height: size.height * 0.001,
                              thickness: size.height * 0.0001,
                            ),
                          ],
                        );
                      },
                      childCount: splitList.length,
                    ),
                  ),
                ],
              ),
            );
          },
        );
      },
    );
  }
}
