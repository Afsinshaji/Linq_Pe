import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:linq_pe/application/ledger/ledger_bloc.dart';
import 'package:linq_pe/application/view_dto/ledger/ledger.dart';
import 'package:linq_pe/presentation/screens/home/screen_home.dart';
import 'package:linq_pe/presentation/screens/home/widgets/floating_add_button.dart';
import 'package:linq_pe/presentation/view_state/ledger/ledger.dart';
import 'package:linq_pe/presentation/widgets/alert_box.dart';
import 'package:linq_pe/utilities/colors.dart';

class LedgerScreen extends StatefulWidget {
  const LedgerScreen({super.key});

  @override
  State<LedgerScreen> createState() => _LedgerScreenState();
}

class _LedgerScreenState extends State<LedgerScreen> {
  @override
  void initState() {
    super.initState();
    BlocProvider.of<LedgerBloc>(context).add(const LedgerEvent.getLedgers());
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: LinqPeColors.kWhiteColor,
      appBar: AppBar(
        toolbarHeight: size.height * 0.1,
        title: Text('Ledgers',
            style: GoogleFonts.poppins(
              textStyle: TextStyle(
                letterSpacing: .8,
                fontSize: size.width * 0.08,
                color: LinqPeColors.kWhiteColor,
                fontWeight: FontWeight.w600,
              ),
            )),
        backgroundColor: LinqPeColors.kPinkColor,
        shadowColor: LinqPeColors.kBlackColor,
      ),
      floatingActionButton: Padding(
        padding:  EdgeInsets.only(top: size.height*0.85),
        child: Column(
          children: [
            FloatingAddButton(
              buttonName: 'Add Ledger',
              heroTag: 'heroTagLedger',
              partyType: 'Ledger',
              partyColor: LinqPeColors.kPinkColor,
              paddingHorizontal: size.width * 0.05,
            ),
            SizedBox(height: size.height*0.01,),
             FloatingAddButton(
              buttonName: 'Roll Ledger',
              heroTag: 'heroTagRollLedger',
              partyType: 'Roll Ledger',
              partyColor: LinqPeColors.kPinkColor,
              paddingHorizontal: size.width * 0.05,
            ),
          ],
        ),
      ),
      body: BlocBuilder<LedgerBloc, LedgerState>(
        builder: (context, state) {
          List<LedgerDTO> ledgerList = [];
          if (state is displayLedgers) {
            ledgerList = state.ledgerList;
          }
          return SafeArea(
              child: ledgerList.isEmpty
                  ? Center(
                      child: Padding(
                        padding: EdgeInsets.only(top: size.height * 0.0),
                        child: Image.asset(
                            'assets/gif/colors-crypto-banking-and-cryptocurrency-wallet.gif'),
                      ),
                    )
                  : ListView.separated(
                      itemCount: ledgerList.length,
                      itemBuilder: (context, index) {
                        return LedgerListTileWidget(
                          ledger: ledgerList[index],
                        );
                      },
                      separatorBuilder: (context, index) {
                        return const SizedBox();
                      },
                    ));
        },
      ),
    );
  }
}

class LedgerListTileWidget extends ConsumerWidget {
  const LedgerListTileWidget({
    super.key,
    required this.ledger,
  });
  final LedgerDTO ledger;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final Size size = MediaQuery.of(context).size;
    return InkWell(
      onLongPress: () {
        showPopupMenu(context, size, ledger.ledgerId);
      },
      onTap: () {
        addCurrentLedger(ledger.ledgerId, ref);
        Navigator.push(
            context,
            CupertinoPageRoute(
              builder: (context) => HomeScreen(ledgerId: ledger.ledgerId),
            ));
      },
      child: Container(
        height: size.height * 0.08,
        margin: EdgeInsets.only(
            left: size.width * 0.05,
            right: size.width * 0.05,
            top: size.width * 0.05),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          gradient: LinearGradient(
            colors: [
              LinqPeColors.kPinkColor.withOpacity(0.7),
              LinqPeColors.kPinkColor.withOpacity(0.9)
            ],
          ),
        ),
        child: Text(ledger.ledgerName,
            style: GoogleFonts.poppins(
              textStyle: TextStyle(
                letterSpacing: .8,
                fontSize: size.width * 0.05,
                color: LinqPeColors.kWhiteColor,
                fontWeight: FontWeight.w600,
              ),
            )),
      ),
    );
  }
}

void showPopupMenu(BuildContext context, Size size, String ledgerId) {
  final RenderBox overlay =
      Overlay.of(context).context.findRenderObject() as RenderBox;
  final RenderBox button = context.findRenderObject() as RenderBox;

  final RelativeRect position = RelativeRect.fromRect(
    Rect.fromPoints(
      button.localToGlobal(button.size.topRight(Offset.zero),
          ancestor: overlay),
      button.localToGlobal(button.size.bottomRight(Offset.zero),
          ancestor: overlay),
    ),
    Offset.zero & overlay.size,
  );

  showMenu(
    color: LinqPeColors.kredColor,
    context: context,
    position: position,
    items: [
      PopupMenuItem(
        value: 1,
        child: Row(
          children: [
            const Icon(
              Icons.delete,
              color: LinqPeColors.kWhiteColor,
            ),
            Text(
              'delete ledger',
              style: GoogleFonts.poppins(
                textStyle: TextStyle(
                  letterSpacing: .5,
                  color: LinqPeColors.kWhiteColor.withOpacity(0.9),
                  fontWeight: FontWeight.w700,
                ),
              ),
            )
          ],
        ),
      ),
    ],
  ).then((value) {
    if (value != null) {
      if (value == 1) {
        alertBox(context, 'Delete Ledger Account', () {
          BlocProvider.of<LedgerBloc>(context)
              .add(LedgerEvent.deleteLedgers(ledgerId: ledgerId));
          Navigator.pop(context);
        }, size);
      }
    }
  });
}
