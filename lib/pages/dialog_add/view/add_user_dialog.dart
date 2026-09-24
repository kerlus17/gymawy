import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:systeam_gym/core/constants/app_colors.dart';
import 'package:systeam_gym/data/models/gym_member/gym_member.dart';
import 'package:systeam_gym/data/models/subscription/subscription.dart';
import 'package:systeam_gym/data/presentation/member/member_bloc.dart';
import 'package:systeam_gym/data/presentation/subscription/subscription_bloc.dart';
import 'package:systeam_gym/pages/dialog_add/cubit_dialog/add_cubit.dart';
import 'package:systeam_gym/pages/dialog_add/cubit_dialog/add_state.dart';
import 'package:systeam_gym/pages/dialog_add/widget/text_dialog.dart'; 
import 'package:systeam_gym/test_widgets/dashbord_screen.dart';
import 'package:systeam_gym/shared/btns/custom_btn.dart';
import 'package:systeam_gym/shared/taxt/custom_taxtfield.dart';

class AddUserDialog extends StatefulWidget {
  const AddUserDialog({super.key});

  @override
  State<AddUserDialog> createState() => _AddUserDialogState();
}

class _AddUserDialogState extends State<AddUserDialog> {
  // String gender = 'Male';
  // String sportType = 'Regular (Gym)';
  // String package = '1 Month';

  DateTime startDate = DateTime.now();
  DateTime endDate = DateTime.now().add(const Duration(days: 30));
  final TextEditingController namecontroller = TextEditingController();
  final TextEditingController phonecontroller = TextEditingController();
  final TextEditingController idcontroller = TextEditingController();
  final TextEditingController amountHepaidcontroller = TextEditingController();
  

  @override
  void dispose() {
    namecontroller.dispose();
    phonecontroller.dispose();
    idcontroller.dispose();
    amountHepaidcontroller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (  context)=>  AddUserCubit() ,
      child: Builder(
        builder: (context) {
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
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //const SizedBox(height: 20),
      
                    Divider(color: ColorsMenege.border, height: 1),
      
                    const SizedBox(height: 15),
                    TextDialog(text: 'Member Full Name'),
                    const SizedBox(height: 8),
                    CustomTaxtfield(
                      controller: namecontroller,
                      hint: '',
                      keyboardType: TextInputType.name,
                      icon: Icons.person_outline,
                    ),
      
                    const SizedBox(height: 15),
                    TextDialog(text: 'ID'),
                    const SizedBox(height: 8),
                    CustomTaxtfield(
                      hint: '',
                      icon: Icons.badge_outlined,
                      controller: idcontroller,
                      keyboardType: TextInputType.number,
      
                    ),
                    const SizedBox(height: 15),
                    TextDialog(text: 'Phone Number'),
                    const SizedBox(height: 8),
                    CustomTaxtfield(
                      hint: '',
                      controller: phonecontroller,
                      keyboardType: TextInputType.phone,
      
                      icon: Icons.phone_outlined,
                    ),
                    const SizedBox(height: 15),
                    TextDialog(text: 'Gender'),
                    const SizedBox(height: 8),
                    BlocBuilder<AddUserCubit, AddUserState>(
                      builder: (  context, state) { return      Row(
                        children: [
                          Expanded(
                            child: SelectButton(
                              title: 'Male',
                              selected:  state.gender==GenderType.male,
                              onTap: () {
                                context.read<AddUserCubit>().changeGender(GenderType.male);
                              },
                            ),
                          ),
                          const SizedBox(width: 14),
                          Expanded(
                            child: SelectButton(
                              title: 'Female',
                               selected:  state.gender==GenderType.female,
                              onTap: () {
                                context.read<AddUserCubit>().changeGender(GenderType.female);
                              },
                            ),
                          ),
                        ],
                      );
                  },
                     ),
                    const SizedBox(height: 15),
                    TextDialog(text: 'Membership Type'),
                    const SizedBox(height: 8),
                    BlocBuilder<AddUserCubit,AddUserState>(builder:(context,state) {return   Row(
                      children: [
                        Expanded(
                          child: SelectButton(
                            title: 'Regular (Gym)',
                             selected:  state.sportType==SportType.regularGym,
                              onTap: () {
                                context.read<AddUserCubit>().changeSportType(SportType.regularGym);
                              },
                          ),
                        ),
                        const SizedBox(width: 14),
                        Expanded(
                          child: SelectButton(
                            title: 'Cardio',
                             selected:  state.sportType==SportType.cardio,
                              onTap: () {
                                context.read<AddUserCubit>().changeSportType(SportType.cardio);
                              },
                          ),
                        ),
                      ],
                    )
                 ;}),
                     const SizedBox(height: 15),
                    TextDialog(text: 'Paid Subscription Plan'),
                    const SizedBox(height: 8),
                    BlocBuilder<AddUserCubit,AddUserState>(
                      builder: (BuildContext context, state) { return  Row(
                        children: [
                          Expanded(
                            child: SelectButton(
                              title: '1 Month',
                             selected:  state.package==PackageType.oneMonth,
                              onTap: () {
                                context.read<AddUserCubit>().changePackage(PackageType.oneMonth);
                              },
                            ),
                          ),
                          const SizedBox(width: 10),
                          Expanded(
                            child: SelectButton(
                              title: '3 Months',
                               selected:  state.package==PackageType.threeMonths,
                              onTap: () {
                                context.read<AddUserCubit>().changePackage(PackageType.threeMonths);
                              },
                            ),
                          ),
                          const SizedBox(width: 10),
                          Expanded(
                            child: SelectButton(
                              title: '6 Months',
   selected:  state.package==PackageType.sixMonths,
                              onTap: () {
                                context.read<AddUserCubit>().changePackage(PackageType.sixMonths);
                              },
                            ),
                          ),
                        ],
                      );
                 },
                         ),
                    const SizedBox(height: 15),
      
                    // =========================
                    // PRICE
                    // =========================
                    const TextDialog(text: 'Customer Paid Amount (EGP)'),
      
                    const SizedBox(height: 8),
      
                    CustomTaxtfield(
                      controller: amountHepaidcontroller,
                      hint: 'Subscription Price: 300 EGP',
                      textAlign: TextAlign.center,
                      keyboardType: TextInputType.number,
                    ),
      
                    const SizedBox(height: 22),
      
                    // =========================
                    // DATES
                    // =========================
                    Row(
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              const TextDialog(text: 'تاريخ البدء (START DATE)'),
                              const SizedBox(height: 8),
                              DateButton(
                                date: startDate,
                                onTap: () => pickDate(true),
                              ),
                            ],
                          ),
                        ),
      
                        const SizedBox(width: 14),
      
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              const TextDialog(text: 'تاريخ الانتهاء (END DATE)'),
                              const SizedBox(height: 8),
                              DateButton(
                                date: endDate,
                                onTap: () => pickDate(false),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
      
                    const SizedBox(height: 28),
                  ],
                ),
              ),
            ),
            actions: [
              Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: CustomBtn(
                      title: ' Save & Add Member',
                      icon: Icons.check,
                      backgroundColor: ColorsMenege.red,
                      onTap: () {
                         final state = context.read<AddUserCubit>().state;
                        final Gender gen = state.gender == GenderType.female
                            ? Gender.female
                            : Gender.male;
      
                        final SubscriptionPlan pack;
                        switch (state.package) {
                          case PackageType.threeMonths:
                            pack = SubscriptionPlan.threeMonths;
                            break;
                          case PackageType.sixMonths:
                            pack = SubscriptionPlan.sixMonths;
                            break;
                          default:
                            pack = SubscriptionPlan.oneMonths;
                        }
                        context.read<MemberBloc>().add(
                          MemberEvent.addNewMember(
                            member: GymMember(
                              id: idcontroller.text.trim(),
                              name: namecontroller.text.trim(),
                              phone: phonecontroller.text.trim(),
                              createdAt: DateTime.now(),
                              gender: gen,
                            ),
                          ),
                        );
                        context.read<SubscriptionBloc>().add(
                          SubscriptionEvent.addSubscription(
                            subscription: Subscription(
                              id: "1",
                              memberId: idcontroller.text.trim(),
                              planId: pack,
                              createdAt: DateTime.now(),
                              startDate: startDate,
                              endDate: endDate,
                              priceInPounds: 300,
                              priceHePaid:
                                  int.tryParse(
                                    amountHepaidcontroller.text.trim(),
                                  ) ??
                                  0,
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
          );
        },
      ),
    );
  }

  Future<void> pickDate(bool isStart) async {
    final selected = await showDatePicker(
      context: context,
      initialDate: isStart ? startDate : endDate,
      firstDate: DateTime(2020),
      lastDate: DateTime(2035),
      builder: (context, child) {
        return Theme(
          data: Theme.of(context).copyWith(
            colorScheme: ColorScheme.dark(
              primary: ColorsMenege.red2,
              onPrimary: Colors.white,
              surface: ColorsMenege.back_color,
              onSurface: Colors.white,
            ),
          ),
          child: child!,
        );
      },
    );

    if (selected == null) return;

    setState(() {
      if (isStart) {
        startDate = selected;
      } else {
        endDate = selected;
      }
    });
  }


  
}
