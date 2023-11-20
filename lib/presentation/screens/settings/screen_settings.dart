import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:linq_pe/presentation/widgets/sliver_app_bar.dart';
import 'package:linq_pe/utilities/colors.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: CustomScrollView(
      slivers: [
        SliverPersistentHeader(
            pinned: true,
            floating: true,
            delegate: SilverCommonAppbar(
                screenSize: size,
                title: 'Settings',
                onLeadingArrowPressed: () {
                  Navigator.pop(context);
                },
                actions: [])),
        SliverList(
          delegate: SliverChildListDelegate(
            [
              Image(
                image:
                    const AssetImage('assets/gif/bouncy-gears-and-wrench.gif'),
                height: size.height * 0.3,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SettingsOption(icon: Icons.cloud_upload, text: 'Backup'),
                  SettingsOption(icon: Icons.download, text: 'Import'),
                ],
              ),
              SizedBox(
                height: size.height * 0.1,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SettingsOption(icon: Icons.sms, text: 'Update'),
                  SettingsOption(icon: Icons.share, text: 'Share'),
                ],
              ),
            ],
          ),
        ),
      ],
    ));
  }
}

class SettingsOption extends StatelessWidget {
  const SettingsOption({
    super.key,
    required this.icon,
    required this.text,
  });

  final IconData? icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        Material(
          shadowColor: LinqPeColors.kBlackColor,
          elevation: 10,
          color: LinqPeColors.kWhiteColor,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
          child: Padding(
            padding: EdgeInsets.all(size.width * 0.06),
            child: Icon(
              icon,
              size: size.width * 0.1,
              color: LinqPeColors.kPinkColor,
            ),
          ),
        ),
        SizedBox(
          height: size.height * 0.02,
        ),
        Text(
          text,
          style: GoogleFonts.poppins(
            textStyle: TextStyle(
              letterSpacing: .5,
              fontSize: size.width * 0.05,
              color: LinqPeColors.kPinkColor,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ],
    );
  }
}
