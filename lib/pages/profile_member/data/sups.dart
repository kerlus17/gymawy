import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pluto_grid/pluto_grid.dart';
import 'package:systeam_gym/data/models/subscription/subscription.dart';
import 'package:systeam_gym/data/presentation/subscription/subscription_bloc.dart';
import 'package:systeam_gym/pages/profile_member/widget/part/pay_money_dialog.dart';
import 'package:systeam_gym/shared/btns/custom_btn_icon.dart';
import 'package:systeam_gym/shared/taxt/custom_active_taxt.dart';

class MemberData2 extends StatelessWidget {
  final String memberID;

  const MemberData2({super.key, required this.memberID});

  List<PlutoColumn> _getColumns(BuildContext context) => [
    PlutoColumn(
      title: "رقم الاشتراك",
      field: 'idSub',
      type: PlutoColumnType.text(),
      width: 150,
      minWidth: 130,
      textAlign: PlutoColumnTextAlign.center,
      titleTextAlign: PlutoColumnTextAlign.center,
      hide: true,
      readOnly: true,
    ),
    PlutoColumn(
      title: "حاله الدفع",
      field: 'moneyPaid',
      type: PlutoColumnType.text(),
      width: 150,
      minWidth: 130,
      textAlign: PlutoColumnTextAlign.center,
      titleTextAlign: PlutoColumnTextAlign.center,
      readOnly: true,
    ),
    PlutoColumn(
      title: "السعر",
      field: 'money',
      type: PlutoColumnType.text(),
      width: 150,
      minWidth: 130,
      textAlign: PlutoColumnTextAlign.center,
      titleTextAlign: PlutoColumnTextAlign.center,
      readOnly: true,
    ),
    PlutoColumn(
      title: 'عدد مرات الحضور',
      field: 'attendace',
      type: PlutoColumnType.text(),
      width: 150,
      minWidth: 130,
      textAlign: PlutoColumnTextAlign.center,
      titleTextAlign: PlutoColumnTextAlign.center,
      readOnly: true,
    ),
    PlutoColumn(
      title: 'بدء الاشتراك',
      field: 'startDate',
      type: PlutoColumnType.text(),
      width: 150,
      minWidth: 130,
      textAlign: PlutoColumnTextAlign.center,
      titleTextAlign: PlutoColumnTextAlign.center,
      readOnly: true,
    ),
    PlutoColumn(
      title: 'نهاية الاشتراك',
      field: 'endDate',
      type: PlutoColumnType.text(),
      width: 150,
      minWidth: 130,
      textAlign: PlutoColumnTextAlign.center,
      titleTextAlign: PlutoColumnTextAlign.center,
      readOnly: true,
    ),
    PlutoColumn(
      title: 'مدة الاشتراك',
      field: 'duration',
      type: PlutoColumnType.text(),
      width: 130,
      minWidth: 110,
      textAlign: PlutoColumnTextAlign.center,
      titleTextAlign: PlutoColumnTextAlign.center,
      readOnly: true,
    ),
    PlutoColumn(
      title: 'الحالة',
      field: 'status',
      type: PlutoColumnType.text(),
      width: 120,
      minWidth: 100,
      textAlign: PlutoColumnTextAlign.center,
      titleTextAlign: PlutoColumnTextAlign.center,
      readOnly: true,
      renderer: (rendererContext) {
        final status = rendererContext.cell.value;
        return Center(child: CustomActiveTaxt(status: status));
      },
    ),
    PlutoColumn(
      title: 'الإجراءات',
      field: 'actions',
      type: PlutoColumnType.text(),
      width: 100,
      minWidth: 90,
      enableEditingMode: false,
      enableContextMenu: false,
      enableDropToResize: false,
      textAlign: PlutoColumnTextAlign.center,
      titleTextAlign: PlutoColumnTextAlign.center,
      renderer: (rendererContext) {
        return CustomBtnIcon(
          icon: Icons.edit_outlined,
          color: const Color(0xFF202C3D),
          onTap: () async {
            final idSub = rendererContext.row.cells['idSub']?.value ?? memberID;

            final subscriptionBloc = context.read<SubscriptionBloc>();

            await showDialog(
              context: context,
              builder: (dialogContext) {
                return MultiBlocProvider(
                  providers: [BlocProvider.value(value: subscriptionBloc)],
                  child: PayMoneyDialog(memberId: memberID, subId: idSub),
                );
              },
            );
          },
        );
      },
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SubscriptionBloc, SubscriptionState>(
      builder: (context, state) {
        if (state is LoadingState) {
          return const Center(child: CircularProgressIndicator());
        }

        if (state is SuccessState) {
          final List<PlutoRow> rows = state.subscriptions.map((sub) {
            final bool isActive = sub.isActiveAt(DateTime.now());

            final int timesOfAtendance = sub.timesOdAtendance;
            final int doneMoney = sub.DoneMoney();
            final String pack = switch (sub.planId) {
              SubscriptionPlan.oneMonths => 'شهر',
              SubscriptionPlan.threeMonths => '3 أشهر',
              SubscriptionPlan.sixMonths => '6 أشهر',
              SubscriptionPlan.yearly => 'سنوي',
              _ => 'غير مشترك',
            };
            return PlutoRow(
              cells: {
                'idSub': PlutoCell(value: sub.id),
                'moneyPaid': PlutoCell(
                  value: doneMoney == 0 ? "خالص" : " متبقي $doneMoney",
                ),
                'money': PlutoCell(value: sub.priceInPounds),
                'attendace': PlutoCell(value: '$timesOfAtendance مره'),
                'startDate': PlutoCell(
                  value: sub.startDate.toString().split(' ')[0],
                ),
                'endDate': PlutoCell(
                  value: sub.endDate.toString().split(' ')[0],
                ),
                'duration': PlutoCell(value: pack),
                'status': PlutoCell(value: isActive),
                'actions': PlutoCell(value: ''),
              },
            );
          }).toList();

          return PlutoGrid(
            key: UniqueKey(),
            columns: _getColumns(context),
            rows: rows,
            configuration: PlutoGridConfiguration(
              style: PlutoGridStyleConfig(
                gridBackgroundColor: Colors.transparent,
                activatedColor: Colors.transparent,
                rowColor: Colors.transparent,
                gridBorderColor: Colors.white12,
                cellTextStyle: const TextStyle(color: Colors.white),
                columnTextStyle: const TextStyle(color: Colors.white),
              ),
            ),
            onLoaded: (PlutoGridOnLoadedEvent event) {
              event.stateManager.setShowColumnFilter(false);
            },
          );
        }

        return const Center(child: Text('لا توجد بيانات اشتراكات'));
      },
    );
  }
}
