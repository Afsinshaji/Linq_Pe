import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:linq_pe/application/contacts/contacts_bloc.dart';
import 'package:linq_pe/presentation/screens/home/screen_home.dart';
import 'package:linq_pe/utilities/colors.dart';
import 'package:permission_handler/permission_handler.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  Future<bool> askPermissions() async {
    PermissionStatus permissionStatus = await getContactPermission();
    if (permissionStatus == PermissionStatus.granted) {
      return true;
    } else {
      handleInvalidPermissions(permissionStatus);
      return false;
    }
  }

  Future<PermissionStatus> getContactPermission() async {
    PermissionStatus permission = await Permission.contacts.status;

    if (permission != PermissionStatus.granted &&
        permission != PermissionStatus.permanentlyDenied) {
      PermissionStatus permissionStatus = await Permission.contacts.request();
      if (permissionStatus == PermissionStatus.granted) {
        BlocProvider.of<ContactsBloc>(context)
            .add(const ContactsEvent.addContactsList());
      }
      return permissionStatus;
    } else {
      return permission;
    }
  }

  void handleInvalidPermissions(PermissionStatus permissionStatus) {
    if (permissionStatus == PermissionStatus.denied) {
      const snackBar = SnackBar(content: Text('Access to contact data denied'));
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    } else if (permissionStatus == PermissionStatus.permanentlyDenied) {
      const snackBar =
          SnackBar(content: Text('Contact data not available on device'));
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    }
  }

  @override
  void initState() {
    Future.delayed(
      const Duration(seconds: 3),
      () async {
        await askPermissions().then((value) => Navigator.pushReplacement(
            context,
            CupertinoPageRoute(
              builder: (context) => const HomeScreen(),
            )));
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: LinqPeColors.kWhiteColor,
      body: Container(
        color: LinqPeColors.kPinkColor,
        height: size.height,
        width: size.width,
        child: Center(
          child: Image.asset('assets/gif/dazzle-money-rise-1.gif'),
        ),
      ),
    );
  }
}
