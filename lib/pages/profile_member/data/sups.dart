import 'package:flutter/material.dart';
import 'package:pluto_grid/pluto_grid.dart';
import 'package:systeam_gym/shared/btns/custom_btn_icon.dart';
import 'package:systeam_gym/shared/taxt/custom_active_taxt.dart';

class MemberData2 {
  static List<PlutoColumn> columns = [
    // رقم الاشتراك
    PlutoColumn(
      title: 'رقم الاشتراك',
      field: 'subscriptionId',
      type: PlutoColumnType.text(),
      width: 150,
      minWidth: 130,
      textAlign: PlutoColumnTextAlign.center,
      titleTextAlign: PlutoColumnTextAlign.center,
      readOnly: true,
    ),

    // تاريخ بداية الاشتراك
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

    // تاريخ نهاية الاشتراك
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

    // مدة الاشتراك
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

    // الحالة
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
        final status = rendererContext.cell.value.toString();

        return Center(
          child: CustomActiveTaxt(
            text: status,
            // لو الـ CustomActiveTaxt عندك بياخد
            // isActive أو أي parameter مختلف عدله هنا
          ),
        );
      },
    ),

    // الأكشن
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

      // renderer: (rendererContext) {
      //   return Center(
      //     child: CustomBtnIcon(
      //       icon: Icons.arrow_forward_ios_rounded,
      //       color: const Color(0xFF202C3D),
      //       iconColor: Colors.white,
      //       onTap: () {
      //         // هنا تقدر تفتح تفاصيل الاشتراك
      //         // _showSubscriptionDetails(rendererContext.row);
      //       },
      //     ),
      //   );
      // },
    ),
  ];

  static List<PlutoRow> rows = [
    PlutoRow(
      cells: {
        'subscriptionId': PlutoCell(value: '#SUB-001'),
        'startDate': PlutoCell(value: '2026-05-26'),
        'endDate': PlutoCell(value: '2026-08-26'),
        'duration': PlutoCell(value: '3 شهور'),
        'status': PlutoCell(value: 'منتهى'),
        'actions': PlutoCell(value: ''),
      },
    ),

    PlutoRow(
      cells: {
        'subscriptionId': PlutoCell(value: '#SUB-000'),
        'startDate': PlutoCell(value: '2026-03-10'),
        'endDate': PlutoCell(value: '2026-04-10'),
        'duration': PlutoCell(value: 'شهر'),
        'status': PlutoCell(value: 'منتهى'),
        'actions': PlutoCell(value: ''),
      },
    ),

    PlutoRow(
      cells: {
        'subscriptionId': PlutoCell(value: '#SUB-999'),
        'startDate': PlutoCell(value: '2025-12-01'),
        'endDate': PlutoCell(value: '2026-02-01'),
        'duration': PlutoCell(value: '3 شهور'),
        'status': PlutoCell(value: 'منتهى'),
        'actions': PlutoCell(value: ''),
      },
    ),
  ];
}