import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:systeam_gym/core/constants/app_colors.dart';
import 'package:systeam_gym/data/models/gym_member/gym_member.dart';
import 'package:systeam_gym/data/models/subscription/subscription.dart';
import 'package:systeam_gym/data/presentation/member/member_bloc.dart';
import 'package:systeam_gym/data/presentation/subscription/subscription_bloc.dart';
import 'package:systeam_gym/pages/dialog_add/cubit_dialog/add_cubit.dart';
import 'package:systeam_gym/pages/dialog_add/widget/select_button.dart';
import 'package:systeam_gym/pages/dialog_add/widget/text_dialog.dart';
import 'package:systeam_gym/shared/btns/custom_btn.dart';
import 'package:systeam_gym/shared/taxt/custom_taxtfield.dart';

class AddNewSubscriptionDialog extends StatefulWidget {
  const AddNewSubscriptionDialog({super.key, required this.memberId});
  final String memberId;

  @override
  State<AddNewSubscriptionDialog> createState() =>
      _AddNewSubscriptionDialogState();
}

class _AddNewSubscriptionDialogState extends State<AddNewSubscriptionDialog> {
  SubscriptionPlan pack = SubscriptionPlan.oneMonths;
  TextEditingController pricecontroller = TextEditingController();
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
        'Register New Member',
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

              Row(
                children: [
                  Expanded(
                    child: SelectButton(
                      title: '1 Month',
                      selected: pack == SubscriptionPlan.oneMonths,
                      onTap: () {
                        setState(() {
                          pack = SubscriptionPlan.oneMonths;
                        });
                      },
                    ),
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: SelectButton(
                      title: '3 months',
                      selected: pack == SubscriptionPlan.threeMonths,
                      onTap: () {
                        setState(() {
                          pack = SubscriptionPlan.threeMonths;
                        });
                      },
                    ),
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: SelectButton(
                      title: '6 months',
                      selected: pack == SubscriptionPlan.sixMonths,
                      onTap: () {
                        setState(() {
                          pack = SubscriptionPlan.sixMonths;
                        });
                      },
                    ),
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: SelectButton(
                      title: 'year',
                      selected: pack == SubscriptionPlan.yearly,
                      onTap: () {
                        setState(() {
                          pack = SubscriptionPlan.yearly;
                        });
                      },
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 16),
              TextDialog(text: 'سعر الاشتراك'),
              const SizedBox(height: 8),
              CustomTaxtfield(
                controller: pricecontroller,
                hint: '',
                keyboardType: TextInputType.number,
                icon: Icons.money_rounded,
              ),

              const SizedBox(height: 16),
              TextDialog(text: 'سعر الاشتراك'),
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
                        DateTime today = DateTime.now();

                        DateTime dateOfEnd = today;
                        if (pack == SubscriptionPlan.oneMonths) {
                          dateOfEnd = DateTime(
                            today.year,
                            today.month + 1,
                            today.day,
                            today.hour,
                            today.minute,
                          );
                        } else if (pack == SubscriptionPlan.threeMonths) {
                          dateOfEnd = DateTime(
                            today.year,
                            today.month + 3,
                            today.day,
                            today.hour,
                            today.minute,
                          );
                        } else if (pack == SubscriptionPlan.sixMonths) {
                          dateOfEnd = DateTime(
                            today.year,
                            today.month + 6,
                            today.day,
                            today.hour,
                            today.minute,
                          );
                        } else if (pack == SubscriptionPlan.yearly) {
                          dateOfEnd = DateTime(
                            today.year + 1,
                            today.month,
                            today.day,
                            today.hour,
                            today.minute,
                          );
                        }

                        context.read<SubscriptionBloc>().add(
                          SubscriptionEvent.addSubscription(
                            subscription: Subscription(
                              id: "has handelded in bloc",
                              memberId: widget.memberId,
                              planId: pack,
                              createdAt: DateTime.now(),
                              startDate: today,
                              endDate: dateOfEnd,
                              priceInPounds:   int.tryParse(
                                    pricecontroller.text.trim(),
                                  ) ??
                                  0,
                              priceHePaid:
                                  int.tryParse(
                                    pricecHePaidontroller.text.trim(),
                                  ) ??
                                  0,
                              timesOdAtendance: 0
                            ),
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
