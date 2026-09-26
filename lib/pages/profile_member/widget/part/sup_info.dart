import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:systeam_gym/core/constants/app_colors.dart';
import 'package:systeam_gym/data/models/subscription/subscription.dart';
import 'package:systeam_gym/data/presentation/subscription/subscription_bloc.dart';
import 'package:systeam_gym/pages/profile_member/widget/part/add_new_subscription_dialog.dart';
import 'package:systeam_gym/pages/profile_member/widget/part/status_page.dart';
import 'package:systeam_gym/pages/profile_member/widget/profile.dart';
import 'package:systeam_gym/shared/taxt/custom__contaner.dart';

class SupInfo extends StatelessWidget {
  const SupInfo({super.key, required this.memberId});
  final String memberId;

  String formatDate(dynamic date) {
    if (date == null) return '';
    try {
      DateTime parsed = date is DateTime
          ? date
          : DateTime.parse(date.toString());
      return DateFormat('yyyy/MM/dd').format(parsed);
    } catch (e) {
      return date.toString();
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SubscriptionBloc, SubscriptionState>(
      builder: (context, state) {
        final bloc = context.read<SubscriptionBloc>();
        final bool isActive = bloc.statusOfLastSub ?? false;

        String startDate = formatDate(bloc.startDateLastSub);
        String endDate = formatDate(bloc.endDateLastSub);

        final String pack = switch (bloc.lastSub) {
          SubscriptionPlan.oneMonths => 'اشتراك شهر',
          SubscriptionPlan.threeMonths => 'اشتراك 3 أشهر',
          SubscriptionPlan.sixMonths => 'اشتراك 6 أشهر',
          SubscriptionPlan.yearly => 'اشتراك سنوي',
          _ => 'غير مشترك',
        };

        return customContaner(
          hight: 180, // تقليل الارتفاع ليناسب المحتوى
          width: 280,
          backcolor: ColorsMenege.back_color2,

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  const Text(
                    'الاشتراك الحالي',
                    style: TextStyle(
                      color: AppColors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  const Spacer(),
                  StatusPage(
                    isActive: isActive,
                    color: isActive ? AppColors.green : AppColors.red,
                  ),
                ],
              ),

              const SizedBox(height: 12),

              Text(
                pack,
                style: const TextStyle(
                  color: AppColors.white,
                  fontSize: 13, // تكبير حجم اسم الباقة
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 8),

              Text(
                'من: $startDate',
                style: const TextStyle(color: AppColors.grey, fontSize: 10),
              ),

              const SizedBox(height: 2),

              Text(
                'إلى: $endDate',
                style: const TextStyle(color: AppColors.grey, fontSize: 10),
              ),

              const Spacer(),

              SizedBox(
                width: double.infinity,
                height: 32, // تكبير الزر قليلاً
                child: ElevatedButton.icon(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (dialogContext) {
                        return MultiBlocProvider(
                          providers: [
                            BlocProvider.value(
                              value: context.read<SubscriptionBloc>(),
                            ),
                          ],
                          child: AddNewSubscriptionDialog(memberId: memberId),
                        );
                      },
                    ).whenComplete(() {
                      context.read<SubscriptionBloc>().add(
                        SubscriptionEvent.getSubscriptionsOfMember(
                          memberId: memberId,
                        ),
                      );
                    });
                  },
                  icon: const Icon(Icons.refresh, size: 14),
                  label: const Text(
                    'تجديد الاشتراك',
                    style: TextStyle(fontSize: 11, fontWeight: FontWeight.bold),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.red,
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6),
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
