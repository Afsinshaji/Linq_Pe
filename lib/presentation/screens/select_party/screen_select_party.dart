import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:linq_pe/application/contacts/contacts_bloc.dart';
import 'package:linq_pe/presentation/view_state/search_riverpod/search.dart';
import 'package:linq_pe/application/view_dto/contact/contact_dto.dart';
import 'package:linq_pe/presentation/screens/add_party/screen_add_party.dart';
import 'package:linq_pe/utilities/colors.dart';

class SelectPartyScreen extends StatefulWidget {
  const SelectPartyScreen(
      {super.key, required this.partyType, required this.partyColor});
  final String partyType;
  final Color partyColor;

  @override
  State<SelectPartyScreen> createState() => _SelectPartyScreenState();
}

class _SelectPartyScreenState extends State<SelectPartyScreen> {
  List<ContactsDTO> contactList = [];
  @override
  void initState() {
    super.initState();
  }

  bool isOneTime = false;
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: size * 0.12, child: const SelectSearchColumn()),
      body: BlocBuilder<ContactsBloc, ContactsState>(
        builder: (context, state) {
          bool isLoading = false;
          if (state is displayaddingContact) {
            isLoading = state.isLoading;
          }
          if (isLoading == true) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else {
            if (!isOneTime) {
              WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
                BlocProvider.of<ContactsBloc>(context)
                    .add(const ContactsEvent.getContacts());
                isOneTime = true;
              });
            }
          }
          if (state is displayContacts) {
            contactList = state.contactList;
          }
          log('Okay');

          return SelectPartyList(
            contactsList: contactList,
            partyColor: widget.partyColor,
            partyType: widget.partyType,
          );
        },
      ),
    );
  }
}

class SelectPartyList extends ConsumerWidget {
  const SelectPartyList({
    super.key,
    required this.contactsList,
    required this.partyColor,
    required this.partyType,
  });

  final List<ContactsDTO> contactsList;
  final String partyType;
  final Color partyColor;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    List<ContactsDTO> contactList = contactsList;
    String search = ref.watch(contactSearchProvider);
    if (search.isNotEmpty) {
      contactList = contactsList
          .where((element) => element.displayName
              .toLowerCase()
              .contains(search.toLowerCase().trim()))
          .toList();
    }
    log("length:${contactList.length}");
    return ListView.builder(
      itemCount: contactList.length + 1,
      itemBuilder: (context, count) {
        log('contact:${contactsList.toString()}');
        if (count == 0) {
          return ListTile(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AddPartyScreen(
                      partyType: partyType,
                      partyColor: partyColor,
                    ),
                  ));
            },
            leading: const CircleAvatar(
              backgroundColor: LinqPeColors.kPinkColor,
              child: Icon(Icons.add,color: LinqPeColors.kWhiteColor,),
            ),
            title: const Text('Add Party'),
          );
        } else {
        final  index = count - 1;
          return ListTile(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AddPartyScreen(
                      partyType: partyType,
                      partyColor: partyColor,
                      contact: contactList[index],
                    ),
                  ));
            },
            leading: (contactList[index].avatar != null &&
                    contactList[index].avatar!.isNotEmpty)
                ? CircleAvatar(
                    backgroundImage: MemoryImage(contactList[index].avatar!))
                : CircleAvatar(child: Text(contactList[index].initails)),
            title: Text(contactList[index].displayName.isNotEmpty
                ? contactList[index].displayName
                : contactList[index].contactNumber),
            subtitle: Text(contactList[index].contactNumber),
          );
        }
      },
    );
  }
}

class SelectSearchColumn extends ConsumerWidget {
  const SelectSearchColumn({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
      final Size size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(
                Icons.arrow_back,
                color: LinqPeColors.kPinkColor,
              )),
        ),
        Expanded(
          child: Padding(
            padding:  EdgeInsets.symmetric(horizontal: size.width*0.05, vertical: size.height*0.005),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  border: Border.all(
                    color: LinqPeColors.kBlackColor.withOpacity(0.4),
                  )),
              child: TextField(
                onChanged: (value) {
                  contactSearch(value, ref);
                },
                // controller: searchController,

                style: GoogleFonts.openSans(
                  textStyle:  TextStyle(
                    letterSpacing: .3,
                    fontSize: size.height*0.021,
                    color: LinqPeColors.kBlackColor,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                cursorColor: LinqPeColors.kBlackColor,
                cursorWidth: 1,
                cursorHeight: size.height*0.03,
                decoration: InputDecoration(
                    contentPadding: const EdgeInsets.only(left: 40, right: 20),
                    suffixIcon: Padding(
                      padding: const EdgeInsets.only(right: 20.0),
                      child: IconButton(
                        onPressed: () async {},
                        icon: const Icon(Icons.search),
                        color: LinqPeColors.kBlackColor.withOpacity(0.4),
                      ),
                    ),
                    hintText: 'Party name',
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
      ],
    );
  }
}
