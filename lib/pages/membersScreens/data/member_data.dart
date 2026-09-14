import 'package:flutter/material.dart';
import 'package:pluto_grid/pluto_grid.dart';
import 'package:systeam_gym/shared/btns/custom_btn_icon.dart';
import 'package:systeam_gym/shared/taxt/custom_active_taxt.dart';

class MemberData {
  static List<PlutoColumn> columns = [
    PlutoColumn(
      title: 'الاسم الكامل\nللمشترك',
      field: 'name',
      type: PlutoColumnType.text(),
      width: 180,
      minWidth: 150,
      textAlign: PlutoColumnTextAlign.right,
      titleTextAlign: PlutoColumnTextAlign.right,
    ),

    PlutoColumn(
      title: 'باقة الاشتراك ',
      field: 'package',
      type: PlutoColumnType.text(),
      width: 190,
      minWidth: 160,
      textAlign: PlutoColumnTextAlign.center,
      titleTextAlign: PlutoColumnTextAlign.center,

      // نخلي الباقة تظهر بشكل Badge
    ),
    PlutoColumn(
      title: 'نشط ',
      field: 'status',
      type: PlutoColumnType.text(),
      width: 120,
      minWidth: 110,
      textAlign: PlutoColumnTextAlign.center,
      titleTextAlign: PlutoColumnTextAlign.center,
    ),
    PlutoColumn(
      title: 'رقم الجوال',
      field: 'phone',
      type: PlutoColumnType.text(),
      width: 150,
      minWidth: 130,
      textAlign: PlutoColumnTextAlign.center,
      titleTextAlign: PlutoColumnTextAlign.center,
    ),

    PlutoColumn(
      title: 'الجنس',
      field: 'gender',
      type: PlutoColumnType.text(),
      width: 110,
      minWidth: 100,
      textAlign: PlutoColumnTextAlign.center,
      titleTextAlign: PlutoColumnTextAlign.center,
    ),

    PlutoColumn(
      title: 'تاريخ البدء',
      field: 'startDate',
      type: PlutoColumnType.text(),
      width: 140,
      minWidth: 120,
      textAlign: PlutoColumnTextAlign.center,
      titleTextAlign: PlutoColumnTextAlign.center,
      readOnly: true,
    ),

    PlutoColumn(
      title: 'تاريخ انتهاء\nالصلاحية',
      field: 'endDate',
      type: PlutoColumnType.text(),
      width: 150,
      minWidth: 130,
      textAlign: PlutoColumnTextAlign.center,
      titleTextAlign: PlutoColumnTextAlign.center,
      readOnly: true,
    ),

    PlutoColumn(
      title: 'الإجراءات المتاحة',
      field: 'actions',
      type: PlutoColumnType.text(),
      width: 180,
      minWidth: 160,
      enableEditingMode: false,
      enableContextMenu: false,
      enableDropToResize: false,
      textAlign: PlutoColumnTextAlign.center,
      titleTextAlign: PlutoColumnTextAlign.center,

      renderer: (rendererContext) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomBtnIcon(
              icon: Icons.edit_outlined,
              color: const Color(0xFF202C3D),
              onTap: () {
                //  _editMember(rendererContext.row);
              },
            ),

            const SizedBox(width: 8),

            CustomBtnIcon(
              icon: Icons.delete_outline,
              color: const Color(0xFF4A1117),
              iconColor: const Color(0xFFFF4A55),
              onTap: () {
                //  _deleteMember(rendererContext.row);
              },
            ),
          ],
        );
      },
    ),
  ];
  static List<PlutoRow> rows = [
    PlutoRow(
      cells: {
        'name': PlutoCell(value: 'احمد'),
        'phone': PlutoCell(value: '01022293420'),
        'gender': PlutoCell(value: 'ذكر'),
        'package': PlutoCell(value: 'اشتراك شهري عادي'),
        'startDate': PlutoCell(value: '2026-05-26'),
        'endDate': PlutoCell(value: '2026-06-25'),
        'active': PlutoCell(value: 'نعم'),
        'actions': PlutoCell(value: ''),
      },
    ),

    PlutoRow(
      cells: {
        'name': PlutoCell(value: 'انس'),
        'phone': PlutoCell(value: '01000000000'),
        'gender': PlutoCell(value: 'ذكر'),
        'package': PlutoCell(value: 'اشتراك لمدة 3 شهور'),
        'startDate': PlutoCell(value: '2026-05-26'),
        'endDate': PlutoCell(value: '2026-08-24'),
        'active': PlutoCell(value: 'لا'),
        'actions': PlutoCell(value: ''),
      },
    ),

    PlutoRow(
      cells: {
        'name': PlutoCell(value: 'محمد'),
        'phone': PlutoCell(value: '01123456789'),
        'gender': PlutoCell(value: 'ذكر'),
        'package': PlutoCell(value: 'اشتراك شهري عادي'),
        'startDate': PlutoCell(value: '2026-06-01'),
        'endDate': PlutoCell(value: '2026-07-01'),
        'active': PlutoCell(value: 'نعم'),
        'actions': PlutoCell(value: ''),
      },
    ),

    PlutoRow(
      cells: {
        'name': PlutoCell(value: 'مريم'),
        'phone': PlutoCell(value: '01234567890'),
        'gender': PlutoCell(value: 'أنثى'),
        'package': PlutoCell(value: 'اشتراك لمدة 3 شهور'),
        'startDate': PlutoCell(value: '2026-04-10'),
        'endDate': PlutoCell(value: '2026-07-10'),
        'active': PlutoCell(value: 'نعم'),
        'actions': PlutoCell(value: ''),
      },
    ),
  ];
}
