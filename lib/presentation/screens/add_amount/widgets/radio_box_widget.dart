import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:linq_pe/application/view_dto/splitted/splitted.dart';
import 'package:linq_pe/domain/models/transactions/transaction_type.dart';
import 'package:linq_pe/presentation/view_state/add_amount_riverpod/add_amount.dart';
import 'package:linq_pe/utilities/colors.dart';

class RadioBoxWidget extends ConsumerStatefulWidget {
  const RadioBoxWidget({
    super.key,
    required this.transactionName,
    this.transactionValue,
    this.fontSize,
    this.isSplittedbalanceRadio = false,
    this.splittedAccountId='',
    
  });
  final String transactionName;
  final double? fontSize;

  final TransactionTypes? transactionValue;
  final bool isSplittedbalanceRadio;
  final String splittedAccountId;
  

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _RadioBoxWidgetState();
}

class _RadioBoxWidgetState extends ConsumerState<RadioBoxWidget> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width * 0.3,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            widget.transactionName,
            style: TextStyle(
                fontWeight: FontWeight.normal,
                fontSize: widget.fontSize ?? size.width * 0.05,
                color: LinqPeColors.kBlackColor),
          ),
          Radio(
              activeColor: LinqPeColors.kPinkColor,
              groupValue:widget.isSplittedbalanceRadio?
               ref.watch(splittedAccountBalanceProvider):ref.watch(transactionTypeProvider),
              value: widget.isSplittedbalanceRadio
                  ? widget.splittedAccountId
                  : widget.transactionValue,
              onChanged: (value) {
                if (!widget.isSplittedbalanceRadio &&
                    value is TransactionTypes?) {
                  ref.read(transactionTypeProvider.notifier).state = value!;
                } else if (value is String? &&
                    widget.isSplittedbalanceRadio) {
addsplitttedAccountBalance(value!,ref);
                    }
              })
        ],
      ),
    );
  }
}
