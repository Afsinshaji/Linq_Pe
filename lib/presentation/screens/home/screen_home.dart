import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:linq_pe/presentation/screens/expenses/screen_expenses.dart';
import 'package:linq_pe/presentation/screens/home/widgets/tab_views/party_tab_view.dart';
import 'package:linq_pe/presentation/screens/home/widgets/tab_views/rolled_tab_view.dart';
import 'package:linq_pe/presentation/screens/home/widgets/tab_views/splitted_tab_view.dart';

import 'package:linq_pe/presentation/screens/settings/screen_settings.dart';
import 'package:linq_pe/presentation/screens/view_splitted_accounts/screen_view_splitted_accounts.dart';
import 'package:linq_pe/utilities/colors.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key, required this.ledgerId});
  static ValueNotifier<int> tabValue = ValueNotifier(0);
  static ValueNotifier<int> pageValue = ValueNotifier(0);
  final String ledgerId;

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final TabController tabBarController =
        TabController(length: 3, vsync: this);
    final PageController pageController =
        PageController(initialPage: HomeScreen.tabValue.value);

    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: LinqPeColors.kBlackColor,
        drawer: Drawer(
          width: size.width * 0.7,
          backgroundColor: LinqPeColors.kPinkColor,
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              SizedBox(
                height: size.height * 0.3,
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    'AB',
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        letterSpacing: .5,
                        fontSize: size.width * 0.1,
                        color: LinqPeColors.kWhiteColor,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ),
                ),
              ),
              DrawerListTileWidget(
                onTap:  () {
                                Navigator.pop(context);
                                Navigator.push(
                                    context,
                                    CupertinoPageRoute(
                                      builder: (context) =>
                                           ViewPrimaryAccountsScreen(
                                            ledgerId: widget.ledgerId,
                                          ),
                                    ));
                              },
                size: size,
                icon: Icons.splitscreen,
                tileName: 'Splitted',
              ),
              DrawerListTileWidget(
                onTap:  () {
                                Navigator.pop(context);
                                Navigator.push(
                                    context,
                                    CupertinoPageRoute(
                                      builder: (context) =>
                                           ExpensesScreen(
                                            ledgerId:widget.ledgerId ,
                                          ),
                                    ));
                              },
                size: size,
                icon: Icons.currency_rupee,
                tileName: 'Expenses',
              ),
              DrawerListTileWidget(
                      onTap: () {
                                Navigator.pop(context);
                                Navigator.push(
                                    context,
                                    CupertinoPageRoute(
                                      builder: (context) =>
                                          const SettingsScreen(),
                                    ));
                              },
                size: size,
                icon: Icons.settings,
                tileName: 'Settings',
              ),
            ],
          ),
        ),
        appBar: PreferredSize(
          preferredSize: size * 0.13,
          child: ValueListenableBuilder(
              valueListenable: HomeScreen.tabValue,
              builder: (context, value, _) {
                if (tabBarController.index != value) {
                  tabBarController.animateTo(value);
                }

                return AppBar(
                  iconTheme:
                      const IconThemeData(color: LinqPeColors.kWhiteColor),
                  backgroundColor:
                  // value == 0
                      //?
                       LinqPeColors.kPinkColor
                     // : LinqPeColors.kGreenColor
                     ,
                  title: Text(
                    'Accounts Book',
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        letterSpacing: .5,
                        fontSize: size.width * 0.05,
                        color: LinqPeColors.kWhiteColor,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  // actions: [
                  //   DropdownButton(
                  //     underline: const SizedBox(),
                  //     items: [
                  //       DropdownMenuItem(
                  //         value: 1,
                  //         child: InkWell(
                  //             onTap: () {
                  //               Navigator.pop(context);
                  //               Navigator.push(
                  //                   context,
                  //                   CupertinoPageRoute(
                  //                     builder: (context) =>
                  //                         const SettingsScreen(),
                  //                   ));
                  //             },
                  //             child: Text(
                  //               'Settings',
                  //               style: GoogleFonts.poppins(
                  //                 textStyle: TextStyle(
                  //                   letterSpacing: .5,
                  //                   fontSize: size.width * 0.04,
                  //                   color: LinqPeColors.kBlackColor,
                  //                   fontWeight: FontWeight.w600,
                  //                 ),
                  //               ),
                  //             )),
                  //       ),
                  //       DropdownMenuItem(
                  //         value: 2,
                  //         child: InkWell(
                  //             onTap: () {
                  //               Navigator.pop(context);
                  //               Navigator.push(
                  //                   context,
                  //                   CupertinoPageRoute(
                  //                     builder: (context) =>
                  //                         const ExpensesScreen(),
                  //                   ));
                  //             },
                  //             child: Text(
                  //               'Expenses',
                  //               style: GoogleFonts.poppins(
                  //                 textStyle: TextStyle(
                  //                   letterSpacing: .5,
                  //                   fontSize: size.width * 0.04,
                  //                   color: LinqPeColors.kBlackColor,
                  //                   fontWeight: FontWeight.w600,
                  //                 ),
                  //               ),
                  //             )),
                  //       ),
                  //       DropdownMenuItem(
                  //         value: 3,
                  //         child: InkWell(
                  //             onTap: () {
                  //               Navigator.pop(context);
                  //               Navigator.push(
                  //                   context,
                  //                   CupertinoPageRoute(
                  //                     builder: (context) =>
                  //                         const ViewSplittedAccountsScreen(),
                  //                   ));
                  //             },
                  //             child: Text(
                  //               'Splitted',
                  //               style: GoogleFonts.poppins(
                  //                 textStyle: TextStyle(
                  //                   letterSpacing: .5,
                  //                   fontSize: size.width * 0.04,
                  //                   color: LinqPeColors.kBlackColor,
                  //                   fontWeight: FontWeight.w600,
                  //                 ),
                  //               ),
                  //             )),
                  //       )
                  //     ],
                  //     onChanged: (value) {},
                  //     icon: const Icon(
                  //       Icons.splitscreen,
                  //       color: LinqPeColors.kWhiteColor,
                  //     ),
                  //   ),
                  //   SizedBox(
                  //     width: size.width * 0.08,
                  //   )
                  // ],
                  bottom: TabBar(
                      controller: tabBarController,
                      onTap: (value) {
                        HomeScreen.tabValue.value = value;
                        HomeScreen.pageValue.value = value;
                      },
                      dividerColor: Colors.transparent,
                      splashBorderRadius: BorderRadius.circular(40),
                      indicatorColor: LinqPeColors.kWhiteColor,
                      tabs: [
                        HomeTabs(
                          text: 'Party',
                          screenSize: size,
                          onTap: () {
                            HomeScreen.tabValue.value = 0;
                            HomeScreen.pageValue.value = 0;
                          },
                        ),
                        HomeTabs(
                          text: 'Splitted',
                          screenSize: size,
                          onTap: () {
                            HomeScreen.tabValue.value = 1;
                            HomeScreen.pageValue.value = 1;
                          },
                        ),
                             HomeTabs(
                          text:'Rolled',
                          screenSize: size,
                          onTap: () {
                            HomeScreen.tabValue.value = 3;
                            HomeScreen.pageValue.value = 3;
                          },
                        )
                      ]),
                  elevation: 0,
                );
              }),
        ),
        body: SafeArea(
          child: ValueListenableBuilder(
              valueListenable: HomeScreen.pageValue,
              builder: (context, value, _) {
                WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
                  if (pageController.page != value) {
                    pageController.animateToPage(value,
                        duration: const Duration(milliseconds: 500),
                        curve: Curves.ease);
                  }
                });

                return PageView(
                    controller: pageController,
                    onPageChanged: (index) {
                      HomeScreen.tabValue.value = index;
                    },
                    children:  [
                      PartyTabView(ledgerId: widget.ledgerId),
                        SplittedTabView(ledgerId: widget.ledgerId),
                        RolledTabView(ledgerId: widget.ledgerId)
                    ]);
              }),
        ),
      ),
    );
  }
}

class DrawerListTileWidget extends StatelessWidget {
  const DrawerListTileWidget(
      {super.key,
      required this.size,
      required this.tileName,
      required this.onTap,
      required this.icon});
  final IconData icon;
  final Size size;
  final String tileName;
  final Function() onTap;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: 
        onTap
      ,
      leading: Icon(
        icon,
        color: LinqPeColors.kWhiteColor,
        size: size.width * 0.06,
      ),
      title: Text(
        tileName,
        style: GoogleFonts.poppins(
          textStyle: TextStyle(
            letterSpacing: .5,
            fontSize: size.width * 0.05,
            color: LinqPeColors.kWhiteColor,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}

class HomeTabs extends StatelessWidget {
  const HomeTabs({
    super.key,
    required this.text,
    required this.screenSize,
    required this.onTap,
  });

  final String text;
  final Size screenSize;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Tab(
      
      child: Text(
        text,
        style: GoogleFonts.poppins(
          textStyle: TextStyle(
            letterSpacing: .5,
            fontSize: screenSize.width * 0.045,
            color: LinqPeColors.kWhiteColor,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
