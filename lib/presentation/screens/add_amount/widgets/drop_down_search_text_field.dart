import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:linq_pe/application/contacts/contacts_bloc.dart';
import 'package:linq_pe/application/party/customer/customer_bloc.dart';
import 'package:linq_pe/application/splitted/splitted_bloc.dart';
import 'package:linq_pe/application/view_dto/contact/contact_dto.dart';
import 'package:linq_pe/presentation/view_state/add_amount_riverpod/add_amount.dart';
import 'package:linq_pe/presentation/view_state/add_split_amount/add_split_amount.dart';
import 'package:linq_pe/presentation/view_state/ledger/ledger.dart';
import 'package:linq_pe/presentation/view_state/view_party_riverpod.dart/view_party.dart';
import 'package:linq_pe/presentation/widgets/drop_down_field.dart';
import 'package:linq_pe/utilities/colors.dart';

class DropDownSearchTextField extends ConsumerWidget {
  const DropDownSearchTextField({
    super.key,
    required this.hintText,
    required this.isFromField,
    this.isFromAddSplit = false,
    this.providerNum = -1,
  });
  final String hintText;
  final bool isFromField;
  final bool isFromAddSplit;
  final int providerNum;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    List<ContactsDTO> dataList = [
      ContactsDTO(
          ledgerId: ref.watch(currentLedgerIdProvider),
          contactId: 'You',
          displayName: 'You',
          contactNumber: '',
          avatar: null,
          initails: '')
    ];
    final Size size = MediaQuery.of(context).size;
    return BlocBuilder<CustomerBloc, CustomerState>(
      builder: (context, customerstate) {
        List<ContactsDTO> customers = [];
        if (customerstate is displayCustomerList) {
          customers = customerstate.customers;
        }
        return BlocBuilder<SplittedBloc, SplittedState>(
          builder: (context, splitstate) {
            return BlocBuilder<ContactsBloc, ContactsState>(
              builder: (context, state) {
                if (state is displayContacts) {
                  dataList.addAll(state.contactList);
                }
                if (ref.watch(expenseTypeProvider) == ExpenseType.roll &&
                    isFromField == true &&
                    splitstate is displaySplittedAccounts) {
                  final listOfSplittedAccounts = splitstate.splittedAccountList;
                  List<ContactsDTO> listOfSplittedContacts = [];
                  for (var split in listOfSplittedAccounts) {
                    final contactIndex = dataList.indexWhere((element) =>
                        element.contactId == split.splittedAccountContactId);
                    if (contactIndex >= 0 &&
                        !listOfSplittedContacts
                            .contains(dataList[contactIndex])) {
                      listOfSplittedContacts.add(dataList[contactIndex]);
                    }
                  }
                  dataList = listOfSplittedContacts;
                }

                List<ContactsDTO> initialContact = [];
                final initialContactId = ref.watch(toContactIdProvider);
                if (initialContactId.isNotEmpty) {
                  final index = dataList.indexWhere(
                      (element) => element.contactId == initialContactId);

                  if (index >= 0) {
                    initialContact.add(dataList[index]);
                  }
                }
                return SizedBox(
                  height: size.height * 0.08,
                  child: Material(
                    elevation: 2,
                    shadowColor: LinqPeColors.kBlackColor,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(3)),
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: size.width * 0.1,
                      ),
                      child: Center(
                        child: DropDownTextField(
                            initialValue:
                                !isFromField && initialContact.isNotEmpty
                                    ? initialContact[0].displayName
                                    : null,
                            onChanged: (value) {
                              late ContactsDTO newValue;

                              if (value is DropDownValueModel) {
                                newValue = value.value;

                                if (isFromAddSplit && providerNum >= 0) {
                                  addIdProviderValue(
                                      providerNum, ref, newValue.contactId);
                                }

                                if (isFromField) {
                                  addfromContactId(newValue.contactId, ref);

                                  final index = customers.indexWhere(
                                      (element) =>
                                          element.contactId ==
                                          newValue.contactId);
                                  if (index < 0) {
                                    addPrimaryBalanceAmount(0.0, ref);
                                  } else {
                                    log('balance${customers[index].blanceAmount}');
                                    addPrimaryBalanceAmount(
                                        customers[index].blanceAmount == null
                                            ? 0.0
                                            : customers[index].blanceAmount!,
                                        ref);
                                  }
                                } else {
                                  addToContactId(newValue.contactId, ref);
                                }
                              } else {
                                if (isFromAddSplit && providerNum >= 0) {
                                  addIdProviderValue(providerNum, ref, '');
                                }
                              }
                            },
                            hintText: hintText,
                            enableSearch: true,
                            dropDownList: List.generate(
                              dataList.length,
                              (index) => DropDownValueModel(
                                  name: dataList[index].displayName,
                                  value: dataList[index]),
                            )),
                      ),
                    ),
                  ),
                );
              },
            );
          },
        );
      },
    );
  }
}
