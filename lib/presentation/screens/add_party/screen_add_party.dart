import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:linq_pe/application/contacts/contacts_bloc.dart';
import 'package:linq_pe/application/party/customer/customer_bloc.dart';
import 'package:linq_pe/application/view_dto/contact/contact_dto.dart';

import 'package:linq_pe/presentation/screens/add_party/widgets/add_textfield.dart';
import 'package:linq_pe/presentation/screens/view_party/screen_view_party.dart';
import 'package:linq_pe/presentation/view_state/add_amount_riverpod/add_amount.dart';
import 'package:linq_pe/utilities/colors.dart';

class AddPartyScreen extends ConsumerStatefulWidget {
  const AddPartyScreen({
    super.key,
    required this.partyType,
    required this.partyColor,
    this.contact,
  });
  final String partyType;
  final Color partyColor;
  final ContactsDTO? contact;

  @override
  AddPartyScreenState createState() => AddPartyScreenState();
}

class AddPartyScreenState extends ConsumerState<AddPartyScreen> {
  final TextEditingController nameController = TextEditingController();

  final TextEditingController nationalCodeController = TextEditingController();

  final TextEditingController numberController = TextEditingController();

  final formKey = GlobalKey<FormState>();
  @override
  void initState() {
    super.initState();
    if (widget.contact != null) {
      nameController.text = widget.contact!.displayName;
      numberController.text = widget.contact!.contactNumber;
    }
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    nationalCodeController.text = '+91';
    return Form(
      key: formKey,
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(
                Icons.arrow_back,
                color: LinqPeColors.kWhiteColor,
              )),
          backgroundColor: widget.partyColor,
          title: Text(
            'Add Party',
            style: GoogleFonts.poppins(
              textStyle: TextStyle(
                letterSpacing: .1,
                fontSize: size.width * 0.06,
                color: LinqPeColors.kWhiteColor,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
        bottomSheet: InkWell(
          onTap: () {
            if (formKey.currentState!.validate()) {
              if (nameController.text.isNotEmpty &&
                  numberController.text.isNotEmpty) {
                dynamic contacts;
                if (widget.contact != null) {
                  contacts = ContactsDTO(
                    contactId: widget.contact!.contactId,
                    displayName: nameController.text,
                    contactNumber: numberController.text,
                    avatar: widget.contact!.avatar,
                    initails: nameController.text == widget.contact!.displayName
                        ? widget.contact!.initails
                        : extractInitials(nameController.text),
                  );

                  if (contacts.displayName != widget.contact!.displayName ||
                      widget.contact!.contactNumber != contacts.contactNumber) {
                    BlocProvider.of<ContactsBloc>(context)
                        .add(ContactsEvent.addContact(contact: contacts));
                  }
                } else {
                  String time = DateTime.now().toIso8601String();
                  contacts = ContactsDTO(
                    contactId: '$time-${numberController.text}',
                    displayName: nameController.text,
                    contactNumber: numberController.text,
                    avatar: null,
                    initails: extractInitials(nameController.text),
                  );
                  BlocProvider.of<ContactsBloc>(context)
                      .add(ContactsEvent.addContact(contact: contacts));
                }

                if (widget.partyType == 'Customer') {
                  BlocProvider.of<CustomerBloc>(context).add(
                      CustomerEvent.addCustomers(
                          contactId: widget.contact!.contactId));
                }

                ref.read(fromContactIdProvider.notifier).state =
                    contacts.contactId;

                Navigator.push(
                    context,
                    CupertinoPageRoute(
                      builder: (context) => ViewPartyScreen(contact: contacts),
                    ));
              } else {}
            }
          },
          child: Container(
            margin: EdgeInsets.all(size.width * 0.05),
            height: size.height * 0.065,
            width: size.width,
            decoration: BoxDecoration(color: widget.partyColor),
            child: Center(
                child: Text(
              'Add Party',
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
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(size.width * 0.01),
            child: Column(
              children: [
                SizedBox(
                  height: size.height * 0.05,
                ),
                AddTextField(
                    controller: nameController,
                    isTextNumberType: false,
                    text: 'Name',
                    fieldColor: widget.partyColor),
                SizedBox(
                  height: size.height * 0.05,
                ),
                Row(
                  children: [
                    Expanded(
                      child: AddTextField(
                          controller: nationalCodeController,
                          isTextNumberType: false,
                          text: '',
                          fieldColor: widget.partyColor),
                    ),
                    SizedBox(
                      width: size.width * 0.7,
                      child: AddTextField(
                          controller: numberController,
                          isTextNumberType: true,
                          text: 'Phone Number',
                          fieldColor: widget.partyColor),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  String extractInitials(String name) {
    List<String> nameParts = name.trim().split(' ');

    if (nameParts.isEmpty) {
      return '';
    }

    // Take the first character of each part and join them
    String initials = nameParts.map((part) => part[0]).join('').toUpperCase();

    return initials;
  }
}
