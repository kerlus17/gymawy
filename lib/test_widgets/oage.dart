import 'package:flutter/material.dart';
import 'package:pluto_grid/pluto_grid.dart';

class MembersPage extends StatefulWidget {
  const MembersPage({super.key});

  @override
  State<MembersPage> createState() => _MembersPageState();
}

class _MembersPageState extends State<MembersPage> {
  late final List<PlutoColumn> columns;
  late final List<PlutoRow> rows;

  PlutoGridStateManager? stateManager;

  String selectedFilter = 'الكل';

  @override
  void initState() {
    super.initState();

    columns = _buildColumns();
    rows = _buildRows();
  }

  // ============================================================
  // COLUMNS
  // ============================================================

  List<PlutoColumn> _buildColumns() {
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
        renderer: (rendererContext) {
          final value =
              rendererContext.cell.value?.toString() ?? '';

          return Center(
            child: Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 10,
                vertical: 6,
              ),
              decoration: BoxDecoration(
                color: const Color(0xFF4A1117),
                borderRadius: BorderRadius.circular(6),
                border: Border.all(
                  color: const Color(0xFFE31E2F).withOpacity(.35),
                ),
              ),
              child: Text(
                value,
                style: const TextStyle(
                  color: Color(0xFFFF4A55),
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          );
        },
      ),
 PlutoColumn(
        title: 'نشط ',
        field: 'active',
        type: PlutoColumnType.select(
          ['نعم', 'لا'],
        ),
        width: 120,
        minWidth: 110,
        textAlign: PlutoColumnTextAlign.center,
        titleTextAlign: PlutoColumnTextAlign.center,
 
        renderer: (rendererContext) {
          final value =
              rendererContext.cell.value?.toString() ?? '';

          final isActive = value == 'نعم';

          return  Center(
            child: Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 10,
                vertical: 6,
              ),
              decoration: BoxDecoration(
                color: const Color(0xFF4A1117),
                borderRadius: BorderRadius.circular(6),
                border: Border.all(
                  color: const Color(0xFFE31E2F).withOpacity(.35),
                ),
              ),
              child: Text(
                value,
                style: const TextStyle(
                  color: Color(0xFFFF4A55),
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          );
        },
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
        type: PlutoColumnType.select(
          ['ذكر', 'أنثى'],
        ),
        width: 110,
        minWidth: 100,
        textAlign: PlutoColumnTextAlign.center,
        titleTextAlign: PlutoColumnTextAlign.center,
       
      ),

    

      PlutoColumn(
        title: 'تاريخ البدء',
        field: 'startDate',
        type: PlutoColumnType.date(
          format: 'yyyy-MM-dd',
        ),
        width: 140,
        minWidth: 120,
        textAlign: PlutoColumnTextAlign.center,
        titleTextAlign: PlutoColumnTextAlign.center,
         readOnly: true,
      ),

      PlutoColumn(
        title: 'تاريخ انتهاء\nالصلاحية',
        field: 'endDate',
        type: PlutoColumnType.date(
          format: 'yyyy-MM-dd',
        ),
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
              
              

              _ActionButton(
                icon: Icons.edit_outlined,
                color: const Color(0xFF202C3D),
                onTap: () {
                  _editMember(rendererContext.row);
                },
              ),

              const SizedBox(width: 8),

              _ActionButton(
                icon: Icons.delete_outline,
                color: const Color(0xFF4A1117),
                iconColor: const Color(0xFFFF4A55),
                onTap: () {
                  _deleteMember(rendererContext.row);
                },
              ),
            ],
          );
        },
      ),
    ];
  }

  // ============================================================
  // ROWS
  // ============================================================

  List<PlutoRow> _buildRows() {
    return [
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

  // ============================================================
  // BUILD
  // ============================================================

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: const Color(0xFF10141B),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(32),
            child: Column(
              children: [
                _buildHeader(),

                const SizedBox(height: 28),

                _buildFilters(),

                const SizedBox(height: 28),

                Expanded(
                  child: _buildTable(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // ============================================================
  // HEADER
  // ============================================================

  Widget _buildHeader() {
    return Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    width: 6,
                    height: 48,
                    decoration: BoxDecoration(
                      color: const Color(0xFFE31E2F),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),

                  const SizedBox(width: 14),

                  const Text(
                    'إدارة المشتركين',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 6),

              const Text(
                'النظام الشامل المتطور لإدارة مراكز اللياقة البدنية والنوادي الرياضية',
                style: TextStyle(
                  color: Color(0xFF7D8796),
                  fontSize: 13,
                ),
              ),
            ],
          ),
        ),

        const SizedBox(width: 20),

        // تعديل التسعيرات
        _HeaderButton(
          title: 'تعديل تسعيرات العضوية',
          icon: Icons.tune,
          backgroundColor: const Color(0xFF1A2330),
          onTap: () {},
        ),

        const SizedBox(width: 14),

        // إضافة سجل
        _HeaderButton(
          title: 'إضافة سجل جديد',
          icon: Icons.add,
          backgroundColor: const Color(0xFFE31E2F),
          onTap: _addMember,
        ),
      ],
    );
  }

  // ============================================================
  // FILTERS
  // ============================================================

  Widget _buildFilters() {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: const Color(0xFF151A22),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: const Color(0xFF27303D),
        ),
      ),
      child: Row(
        children: [
          // Search
          Expanded(
            child: Container(
              height: 54,
              decoration: BoxDecoration(
                color: const Color(0xFF10151C),
                borderRadius: BorderRadius.circular(14),
                border: Border.all(
                  color: const Color(0xFF27303D),
                ),
              ),
              child: TextField(
                textDirection: TextDirection.rtl,
                onChanged: _search,
                style: const TextStyle(
                  color: Colors.white,
                ),
                decoration: const InputDecoration(
                  hintText:
                      'ابحث باستخدام كلمة دالة (الاسم، الجوال)...',
                  hintStyle: TextStyle(
                    color: Color(0xFF687383),
                    fontSize: 13,
                  ),
                  prefixIcon: Icon(
                    Icons.search,
                    color: Color(0xFF7C8796),
                  ),
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 17,
                  ),
                ),
              ),
            ),
          ),

          const SizedBox(width: 20),

          // Filter
          Container(
            height: 54,
            padding: const EdgeInsets.all(5),
            decoration: BoxDecoration(
              color: const Color(0xFF10151C),
              borderRadius: BorderRadius.circular(14),
              border: Border.all(
                color: const Color(0xFF27303D),
              ),
            ),
            child: Row(
              children: [
                _FilterButton(
                  title: 'الكل',
                  selected: selectedFilter == 'الكل',
                  onTap: () {
                    setState(() {
                      selectedFilter = 'الكل';
                    });
                  },
                ),
                _FilterButton(
                  title: 'النشطة',
                  selected: selectedFilter == 'النشطة',
                  onTap: () {
                    setState(() {
                      selectedFilter = 'النشطة';
                    });
                  },
                ),
                _FilterButton(
                  title: 'الاشتراكات المنتهية',
                  selected:
                      selectedFilter == 'الاشتراكات المنتهية',
                  onTap: () {
                    setState(() {
                      selectedFilter = 'الاشتراكات المنتهية';
                    });
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // ============================================================
  // TABLE
  // ============================================================

  Widget _buildTable() {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFF151A22),
        borderRadius: BorderRadius.circular(22),
        border: Border.all(
          color: const Color(0xFF27303D),
        ),
      ),
      clipBehavior: Clip.antiAlias,
      child: PlutoGrid(
        columns: columns,
        rows: rows,

 mode: PlutoGridMode.readOnly,

  onLoaded: (event) {
    event.stateManager.setSelectingMode(
      PlutoGridSelectingMode.none,
    );
  },

       

        configuration: PlutoGridConfiguration(
          style: PlutoGridStyleConfig(
            gridBackgroundColor:
                const Color(0xFF151A22),

            rowColor:
                const Color(0xFF151A22),

            evenRowColor:
                const Color(0xFF151A22),

            activatedColor:
                const Color(0xFF252D38),
                // checkedColor: const Color(0x11757575),
                // cellColorInEditState: Color(0x11757575),
                // cellColorInReadOnlyState: const Color(0xFFDBDBDC),
            borderColor:
                const Color(0xFF242C37),

            gridBorderColor:
                const Color(0xFF27303D),

            gridBorderRadius:
                BorderRadius.circular(22),

            columnHeight: 75,

            rowHeight: 72,

            columnTextStyle:
                const TextStyle(
              color: Colors.white,
              fontSize: 13,
              fontWeight: FontWeight.bold,
            ),

            cellTextStyle:
                const TextStyle(
              color: Color(0xFFD5DAE1),
              fontSize: 13,
            ),

            iconColor:
                const Color(0xFF8994A3),

            menuBackgroundColor:
                const Color(0xFF1B222D),

            // menuTextColor:
            //     Colors.white,

            // menuItemTextStyle:
            //     const TextStyle(
            //   color: Colors.white,
            //   fontSize: 13,
            // ),
          ),
        ),
      ),
    );
  }

  // ============================================================
  // SEARCH
  // ============================================================

  void _search(String value) {
    if (stateManager == null) return;

    final search = value.trim().toLowerCase();

    if (search.isEmpty) {
      stateManager!.removeAllRows();
      stateManager!.appendRows(_buildRows());
      return;
    }

    final filteredRows = _buildRows().where((row) {
      final name =
          row.cells['name']!.value.toString().toLowerCase();

      final phone =
          row.cells['phone']!.value.toString().toLowerCase();

      return name.contains(search) ||
          phone.contains(search);
    }).toList();

    stateManager!.removeAllRows();
    stateManager!.appendRows(filteredRows);
  }

  // ============================================================
  // ACTIONS
  // ============================================================

  void _addMember() {
    showDialog(
      context: context,
      builder: (_) {
        return NewWidget(context: context);
      },
    );
  }

  void _editMember(PlutoRow row) {
    final name = row.cells['name']!.value;

    showDialog(
      context: context,
      builder: (_) {
        return AlertDialog(
          backgroundColor: const Color(0xFF181E27),
          title: Text(
            'تعديل $name',
            style: const TextStyle(
              color: Colors.white,
            ),
          ),
          content: const Text(
            'هنا هنحط شاشة تعديل بيانات المشترك.',
            style: TextStyle(
              color: Color(0xFF9BA5B3),
            ),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('إغلاق'),
            ),
          ],
        );
      },
    );
  }

  void _deleteMember(PlutoRow row) {
    final name = row.cells['name']!.value;

    showDialog(
      context: context,
      builder: (_) {
        return AlertDialog(
          backgroundColor: const Color(0xFF181E27),
          title: const Text(
            'حذف المشترك',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          content: Text(
            'هل أنت متأكد من حذف $name؟',
            style: const TextStyle(
              color: Color(0xFF9BA5B3),
            ),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('إلغاء'),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor:
                    const Color(0xFFE31E2F),
              ),
              onPressed: () {
                stateManager?.removeRows([row]);

                Navigator.pop(context);
              },
              child: const Text(
                'حذف',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ],
        );
      },
    );
  }

  void _printMember(PlutoRow row) {
    final name = row.cells['name']!.value;

    debugPrint('Printing member: $name');
  }
}

class NewWidget extends StatelessWidget {
  const NewWidget({
    super.key,
    required this.context,
  });

  final BuildContext context;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: const Color(0xFF181E27),
      title: const Text(
        'إضافة مشترك جديد',
        style: TextStyle(
          color: Colors.white,
        ),
      ),
      content: const Text(
        'هنا هنحط Form إضافة المشترك.',
        style: TextStyle(
          color: Color(0xFF9BA5B3),
        ),
      ),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('إغلاق'),
        ),
      ],
    );
  }
}

// ============================================================
// HEADER BUTTON
// ============================================================

class _HeaderButton extends StatelessWidget {
  final String title;
  final IconData icon;
  final Color backgroundColor;
  final  Function() onTap;

  const _HeaderButton({
    required this.title,
    required this.icon,
    required this.backgroundColor,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: backgroundColor,
      borderRadius: BorderRadius.circular(14),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(14),
        child: Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 15,
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                icon,
                color: Colors.white,
                size: 20,
              ),
              const SizedBox(width: 10),
              Text(
                title,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// ============================================================
// FILTER BUTTON
// ============================================================

class _FilterButton extends StatelessWidget {
  final String title;
  final bool selected;
  final VoidCallback onTap;

  const _FilterButton({
    required this.title,
    required this.selected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: selected
          ? const Color(0xFFE31E2F)
          : Colors.transparent,
      borderRadius: BorderRadius.circular(10),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(10),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 18,
            vertical: 10,
          ),
          child: Text(
            title,
            style: TextStyle(
              color: selected
                  ? Colors.white
                  : const Color(0xFF9AA4B2),
              fontSize: 13,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}

// ============================================================
// ACTION BUTTON
// ============================================================

class _ActionButton extends StatelessWidget {
  final IconData icon;
  final Color color;
  final Color iconColor;
  final VoidCallback onTap;

  const _ActionButton({
    required this.icon,
    required this.color,
    this.iconColor = const Color(0xFF9BA8B8),
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: color,
      borderRadius: BorderRadius.circular(9),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(9),
        child: SizedBox(
          width: 40,
          height: 40,
          child: Icon(
            icon,
            color: iconColor,
            size: 19,
          ),
        ),
      ),
    );
  }
}