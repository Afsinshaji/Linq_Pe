import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:linq_pe/application/contacts/contacts_bloc.dart';
import 'package:linq_pe/application/view_dto/contact/contact_dto.dart';
import 'package:linq_pe/presentation/screens/add_party/screen_add_party.dart';

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
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
            WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
              BlocProvider.of<ContactsBloc>(context)
                  .add(const ContactsEvent.getContacts());
            });
          }
          if (state is displayContacts) {
            contactList = state.contactList;
          }
          return ListView.builder(
            itemCount: contactList.length + 1,
            itemBuilder: (context, index) {
              if (index == 0) {
                return ListTile(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => AddPartyScreen(
                            partyType: widget.partyType,
                            partyColor: widget.partyColor,
                          ),
                        ));
                  },
                  leading: const CircleAvatar(
                    child: Icon(Icons.add),
                  ),
                  title: const Text('Add Party'),
                );
              }
              return ListTile(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => AddPartyScreen(
                          partyType: widget.partyType,
                          partyColor: widget.partyColor,
                          contact: contactList[index],
                        ),
                      ));
                },
                leading: (contactList[index].avatar != null &&
                        contactList[index].avatar!.isNotEmpty)
                    ? CircleAvatar(
                        backgroundImage:
                            MemoryImage(contactList[index].avatar!))
                    : CircleAvatar(child: Text(contactList[index].initails)),
                title: Text(contactList[index].displayName.isNotEmpty
                    ? contactList[index].displayName
                    : contactList[index].contactNumber),
                subtitle: Text(contactList[index].contactNumber),
              );
            },
          );
        },
      ),
    );
  }
}
