import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:systeam_gym/core/constants/app_colors.dart';
import 'package:systeam_gym/data/core/toast/toast.dart';
import 'package:systeam_gym/data/presentation/attends/attends_bloc.dart';
import 'package:systeam_gym/shared/btns/custom_btn.dart';
import 'package:systeam_gym/shared/taxt/custom_taxtfield.dart';
import 'package:systeam_gym/shared/taxt/title_page.dart';

class RowTitleDailyLogin extends StatelessWidget {
  const RowTitleDailyLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const TitlePage(title: 'title', descrabtion: 'descrabtion'),
        const Gap(50),
        CustomBtn(
          title: 'add attands',
          icon: Icons.hdr_plus_outlined,
          backgroundColor: ColorsMenege.red2,
          onTap: () {
            showDialog(
              context: context,
              builder: (dialogContext) {
                return MultiBlocProvider(
                  providers: [
                    BlocProvider<AttendsBloc>(
                      create: (context) => AttendsBloc(),
                    ),
                  ],
                  child: const AddAttendanceDialog(),
                );
              },
            );
          },
          isIcon: true,
        ),
        const Gap(100),
        Expanded(child: CustomTaxtfield()),
      ],
    );
  }
}



class AddAttendanceDialog extends StatefulWidget {
  const AddAttendanceDialog({super.key});

  @override
  State<AddAttendanceDialog> createState() => _AddAttendanceDialogState();
}

class _AddAttendanceDialogState extends State<AddAttendanceDialog> {
  late final TextEditingController _memberIdController;

  @override
  void initState() {
    super.initState();
    _memberIdController = TextEditingController();
  }

  @override
  void dispose() {
    _memberIdController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: ColorsMenege.back_color,
      surfaceTintColor: Colors.transparent,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      title: const Text(
        'Register Member',
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 27,
          fontFamily: 'Arial',
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
      content: SizedBox(
        height: 70,
        child: Column(
          children: [
            CustomTaxtfield(
              controller: _memberIdController,
              hint: 'ID',
              icon: Icons.badge_outlined,
            ),
          ],
        ),
      ),
      actions: [
        BlocConsumer<AttendsBloc, AttendsState>(
          listener: (context, state) {
            state.whenOrNull(
              success: (attends) {
                ShowToast.showToastSuccessTop(
                  context: context,
                  message: '${_memberIdController.text} تم تسجيل حضور',
                  seconds: 1,
                );
                Navigator.of(context).pop();
              },
              error: (errMsg) {
                ShowToast.showToastErrorTop(
                  context: context,
                  message: errMsg.toString(),
                  seconds: 1,
                );
              },
            );
          },
          builder: (context, state) {
            final isLoading = state.maybeMap(
              loading: (_) => true,
              orElse: () => false,
            );
            return CustomBtn(
              title: ' Save & Add Member',
              icon: Icons.check,
              backgroundColor: ColorsMenege.red,
              isLoading: isLoading,
              onTap: () {
                final memberId = _memberIdController.text.trim();
                if (memberId.isNotEmpty) {
                  context.read<AttendsBloc>().add(
                    AttendsEvent.addAttendance(memberId: memberId),
                  );
                }
              },
              isIcon: true,
            );
          },
        ),
      ],
    );
  }
}