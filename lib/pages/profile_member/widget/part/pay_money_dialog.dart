import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:systeam_gym/core/constants/app_colors.dart';
import 'package:systeam_gym/data/models/subscription/subscription.dart';
import 'package:systeam_gym/data/presentation/subscription/subscription_bloc.dart';

import 'package:systeam_gym/pages/dialog_add/widget/text_dialog.dart';
import 'package:systeam_gym/shared/btns/custom_btn.dart';
import 'package:systeam_gym/shared/taxt/custom_taxtfield.dart';

class PayMoneyDialog extends StatefulWidget {
  const PayMoneyDialog({
    super.key,
    required this.memberId,
    required this.subId,
  });
  final String memberId;
  final String subId;

  @override
  State<PayMoneyDialog> createState() => _PayMoneyDialogState();
}

class _PayMoneyDialogState extends State<PayMoneyDialog> {
  SubscriptionPlan pack = SubscriptionPlan.oneMonths;
  TextEditingController pricecHePaidontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: ColorsMenege.back_color,
      surfaceTintColor: Colors.transparent,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusGeometry.circular(20),
      ),
      title: const Text(
        'pay mony for subscription',
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 27,
          fontFamily: 'Arial',
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),

      content: SizedBox(
        width: 500,
        child: SingleChildScrollView(
          child: Column(
            children: [
              TextDialog(text: 'Membership Type'),
              const SizedBox(height: 8),

              const SizedBox(height: 16),

              TextDialog(text: 'المبلغ المدغوع'),
              const SizedBox(height: 8),
              CustomTaxtfield(
                controller: pricecHePaidontroller,
                hint: '',
                keyboardType: TextInputType.number,
                icon: Icons.money_rounded,
              ),

              const SizedBox(height: 20),

              Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: CustomBtn(
                      title: ' Save & Add Member',
                      icon: Icons.check,
                      backgroundColor: ColorsMenege.red,
                      onTap: () {
                        context.read<SubscriptionBloc>().add(
                          SubscriptionEvent.addPaymentToSub(
                            pay:
                                int.tryParse(
                                  pricecHePaidontroller.text.trim(),
                                ) ??
                                0,
                            SubId: widget.subId,
                          ),
                        );
                        context.read<SubscriptionBloc>().add(
                          SubscriptionEvent.getSubscriptionsOfMember(
                            memberId: widget.memberId,
                          ),
                        );
                        Navigator.of(context).pop();
                      },
                      isIcon: true,
                    ),
                  ),

                  const SizedBox(width: 14),
                  Expanded(
                    flex: 1,
                    child: CustomBtn(
                      title: ' Cancel',
                      icon: Icons.cancel_outlined,
                      backgroundColor: ColorsMenege.back_color2,
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                      isIcon: true,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
