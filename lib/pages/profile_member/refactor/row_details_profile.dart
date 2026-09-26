import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:intl/intl.dart';
import 'package:systeam_gym/data/models/gym_member/gym_member.dart';
import 'package:systeam_gym/data/presentation/member/member_bloc.dart';
import 'package:systeam_gym/pages/profile_member/widget/part/status_blocks.dart';

class RowDetailsProfile extends StatelessWidget {
  const RowDetailsProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MemberBloc, MemberState>(
      builder: (context, state) {
        return state.maybeWhen(
          success: (members) {
            String formattedDate = DateFormat(
              'yyyy/MM/dd',
            ).format(members[0].createdAt);

            final String gen = members[0].gender == Gender.male
                ? "ذكر"
                : "انثي";
            return Row(
              children: [
                StatusBlocks(text: 'Id', value: members[0].id, des: ''),
                Gap(10),
                StatusBlocks(
                  text: 'رقم الموبايل',
                  value: members[0].phone,
                  des: '',
                ),
                Gap(10),
                StatusBlocks(
                  text: 'بدايه المتدرب',
                  value: formattedDate,
                  des: '',
                ),
                Gap(10),
                StatusBlocks(text: 'النوع', value: gen, des: ''),
              ],
            );
          },
          orElse: () {
            return Row(
              children: const [
                StatusBlocks(
                  text: 'حاله اخر اشتراك',
                  value: 'نشط',
                  des: 'باقي 12 يوم',
                ),
                Gap(10),
                StatusBlocks(text: 'رقم الموبايل', value: '', des: ''),
                Gap(10),
                StatusBlocks(text: 'بدايه المتدرب', value: '', des: ''),
                Gap(10),
                StatusBlocks(text: 'النوع', value: '', des: ''),
              ],
            );
          },
        );
      },
    );
  }
}
