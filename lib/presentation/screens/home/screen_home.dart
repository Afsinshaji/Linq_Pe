import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:linq_pe/presentation/screens/home/widgets/tab_views/customers_tab_view.dart';

import 'package:linq_pe/presentation/screens/settings/screen_settings.dart';
import 'package:linq_pe/utilities/colors.dart';
import 'package:linq_pe/utilities/strings.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  static ValueNotifier<int> tabValue = ValueNotifier(0);
  static ValueNotifier<int> pageValue = ValueNotifier(0);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    // final TabController tabBarController =
    //     TabController(length: 2, vsync: this);
    // final PageController pageController =
    //     PageController(initialPage: HomeScreen.tabValue.value);

    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: LinqPeColors.kBlackColor,
        appBar: PreferredSize(
          preferredSize: size * 0.08,
          child: ValueListenableBuilder(
              valueListenable: HomeScreen.tabValue,
              builder: (context, value, _) {
                // if (tabBarController.index != value) {
                //   tabBarController.animateTo(value);
                // }

                return AppBar(
                  leading: const SizedBox(),
                  backgroundColor: value == 0
                      ? LinqPeColors.kPinkColor
                      : LinqPeColors.kGreenColor,
                  title: Text(
                    LinqPeStrings.linqPe,
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        letterSpacing: .5,
                        fontSize: size.width * 0.05,
                        color: LinqPeColors.kWhiteColor,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  actions: [
                    DropdownButton(
                      underline: const SizedBox(),
                      items: [
                        DropdownMenuItem(
                          value: 1,
                          child: InkWell(
                              onTap: () {
                                Navigator.pop(context);
                                Navigator.push(
                                    context,
                                    CupertinoPageRoute(
                                      builder: (context) =>
                                          const SettingsScreen(),
                                    ));
                              },
                              child: Text(
                                'Settings',
                                style: GoogleFonts.poppins(
                                  textStyle: TextStyle(
                                    letterSpacing: .5,
                                    fontSize: size.width * 0.04,
                                    color: LinqPeColors.kBlackColor,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              )),
                        )
                      ],
                      onChanged: (value) {},
                      icon: const Icon(
                        Icons.menu,
                        color: LinqPeColors.kWhiteColor,
                      ),
                    ),
                    SizedBox(
                      width: size.width * 0.05,
                    )
                  ],
                  // bottom: TabBar(
                  //     controller: tabBarController,
                  //     onTap: (value) {
                  //       HomeScreen.tabValue.value = value;
                  //       HomeScreen.pageValue.value = value;
                  //     },
                  //     dividerColor: Colors.transparent,
                  //     splashBorderRadius: BorderRadius.circular(40),
                  //     indicatorColor: LinqPeColors.kWhiteColor,
                  //     tabs: [
                  //       HomeTabs(
                  //         text: LinqPeStrings.tab1,
                  //         screenSize: size,
                  //         onTap: () {
                  //           // HomeScreen.tabValue.value = 0;
                  //           // HomeScreen.pageValue.value = 0;
                  //         },
                  //       ),
                  //       // HomeTabs(
                  //       //   text: LinqPeStrings.tab2,
                  //       //   screenSize: size,
                  //       //   onTap: () {
                  //       //     // HomeScreen.tabValue.value = 1;
                  //       //     // HomeScreen.pageValue.value = 1;
                  //       //   },
                  //       // )
                  //     ]),
                  elevation: 0,
                );
              }),
        ),
        body: SafeArea(
          child: ValueListenableBuilder(
              valueListenable: HomeScreen.pageValue,
              builder: (context, value, _) {
                WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
                  // if (pageController.page != value) {
                  //   pageController.animateToPage(value,
                  //       duration: const Duration(milliseconds: 500),
                  //       curve: Curves.ease);
                  // }
                });

                return PageView(
                    // controller: pageController,
                    onPageChanged: (index) {
                      HomeScreen.tabValue.value = index;
                    },
                    children: const [
                      CustomersTabView(),
                      // SuppliersTabView()
                    ]);
              }),
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
            fontSize: screenSize.width * 0.04,
            color: LinqPeColors.kWhiteColor,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
