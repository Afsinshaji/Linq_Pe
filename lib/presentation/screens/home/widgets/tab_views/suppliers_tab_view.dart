// import 'package:flutter/material.dart';
// import 'package:linq_pe/presentation/screens/home/widgets/floating_add_button.dart';
// import 'package:linq_pe/presentation/screens/home/widgets/tab_views/customers_tab_view.dart';

// import 'package:linq_pe/utilities/colors.dart';
// import 'package:motion/motion.dart';

// class SuppliersTabView extends StatelessWidget {
//   const SuppliersTabView({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final Size size = MediaQuery.of(context).size;
//     return Scaffold(
//       floatingActionButton: const FloatingAddButton(
//         buttonName: 'Add Supplier',
//         partyColor: LinqPeColors.kGreenColor,
//         partyType: 'Supplier',
//       ),
//       backgroundColor: LinqPeColors.kGreenColor,
//       body: Container(
//         // margin: EdgeInsets.all(size.width * 0.03),
//         padding: EdgeInsets.all(size.width * 0.03),
//         decoration: const BoxDecoration(
//           color: LinqPeColors.kWhiteColor,
//           // borderRadius: BorderRadius.circular(30),
//         ),
//         child: Column(
//           children: [
//             Motion(
//               shadow: const ShadowConfiguration(
//                 color: LinqPeColors.kGreenColor,
//                 blurRadius: 0,
//               ),
//               child: Material(
//                 shadowColor: LinqPeColors.kGreenColor,
//                 elevation: 7,
//                 color: LinqPeColors.kGreenColor,
//                 shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(50),
//                 ),
//                 child: Padding(
//                   padding: EdgeInsets.all(size.width * 0.01),
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                     children: [
//                       const AmountNotifier(
//                           iconColor: LinqPeColors.kBlueColor,
//                           textSign: 'You will get',
//                           amount: '9000000.0'),
//                       Container(
//                         width: size.width * 0.001,
//                         height: size.width * 0.15,
//                         color: LinqPeColors.kWhiteColor,
//                       ),
//                       const AmountNotifier(
//                           iconColor: LinqPeColors.kredColor,
//                           textSign: 'You will give',
//                           amount: '9000000.0')
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//             SizedBox(
//               height: size.height * 0.01,
//             ),
//             SearchRow(size: size, color: LinqPeColors.kGreenColor),
//             Expanded(
//               child: ListView.separated(
//                 // shrinkWrap: true,
//                 itemBuilder: (context, index) {
//                   return EachListTile(size: size);
//                 },
//                 itemCount: 10,
//                 separatorBuilder: (context, index) => Divider(
//                   color: LinqPeColors.kBlackColor,
//                   height: size.height * 0.001,
//                   thickness: size.height * 0.0001,
//                 ),
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
