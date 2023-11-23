
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:linq_pe/domain/models/transactions/transaction_type.dart';
import 'package:linq_pe/presentation/view_state/add_amount_riverpod/add_amount.dart';
import 'package:linq_pe/utilities/colors.dart';



class RadioBoxWidget extends ConsumerStatefulWidget {
  const RadioBoxWidget({
    super.key,
    required this.transactionName,

    
    required this.transactionValue,
  });
  final String transactionName;


  final TransactionTypes transactionValue;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _RadioBoxWidgetState();
}

class _RadioBoxWidgetState extends ConsumerState<RadioBoxWidget> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width*0.3,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            widget.transactionName,
            style:  TextStyle(
                fontWeight: FontWeight.normal,
                fontSize: size.width*0.05,
                color: LinqPeColors.kBlackColor),
          ),
          Radio(
              activeColor: LinqPeColors.kPinkColor,
              groupValue: ref.watch(transactionTypeProvider),
              value: widget.transactionValue,
              onChanged: (value) {
          
                ref.read(transactionTypeProvider.notifier).state = value!;
           
               
              })
        ],
      ),
    );
  }
}