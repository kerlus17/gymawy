import 'package:flutter/material.dart';
import 'package:pluto_grid/pluto_grid.dart';
import 'package:systeam_gym/shared/btns/custom_btn_icon.dart';
import 'package:systeam_gym/pages/profile_member/view/profile_member.dart';

class MemberData {
  static List<PlutoColumn> columns(BuildContext context) {
    return [
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
        title: 'id',
        field: 'id',
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
                  final String memberName =
                      rendererContext.row.cells['name']?.value ?? '';
                  final String memberId =
                      rendererContext.row.cells['id']?.value ?? '';
                  print('fffffffffffffffffffffffffffffffffffffffffffffff');
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ProfileMember(name: memberName,memberId: memberId,),
                    ),
                  );
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
  }
}
