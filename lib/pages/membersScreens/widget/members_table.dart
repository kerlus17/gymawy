import 'package:flutter/material.dart';
import 'package:pluto_grid/pluto_grid.dart';

class MembersTable extends StatefulWidget {
  const MembersTable({super.key, required this.columns, required this.rows});

  final List<PlutoColumn> columns;
  final List<PlutoRow> rows;

  @override
  State<MembersTable> createState() => _MembersTableState();
}

class _MembersTableState extends State<MembersTable> {
  PlutoGridStateManager? stateManager;

  @override
  void didUpdateWidget(covariant MembersTable oldWidget) {
    super.didUpdateWidget(oldWidget);
    // تحديث الصفوف بدون إعادة بناء الـ Grid بالكامل
    if (stateManager != null && oldWidget.rows != widget.rows) {
      stateManager!.removeAllRows(notify: false);
      stateManager!.appendRows(widget.rows);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFF151A22),
        borderRadius: BorderRadius.circular(22),
        border: Border.all(color: const Color(0xFF27303D)),
      ),
      clipBehavior: Clip.antiAlias,
      child: PlutoGrid(
        columns: widget.columns,
        rows: widget.rows,
        mode: PlutoGridMode.readOnly,
        
        onLoaded: (event) {
          stateManager = event.stateManager;
          stateManager!.setSelectingMode(PlutoGridSelectingMode.none);
        },
        configuration: PlutoGridConfiguration(
          style: PlutoGridStyleConfig(
            gridBackgroundColor: const Color(0xFF151A22),
            rowColor: const Color(0xFF151A22),
            evenRowColor: const Color(0xFF151A22),
            activatedColor: const Color(0xFF252D38),
            borderColor: const Color(0xFF242C37),
            gridBorderColor: const Color(0xFF27303D),
            gridBorderRadius: BorderRadius.circular(22),
            columnHeight: 75,
            rowHeight: 72,
            columnTextStyle: const TextStyle(
              color: Colors.white,
              fontSize: 13,
              fontWeight: FontWeight.bold,
            ),
            cellTextStyle: const TextStyle(
              color: Color(0xFFD5DAE1),
              fontSize: 13,
            ),
            iconColor: const Color(0xFF8994A3),
            menuBackgroundColor: const Color(0xFF1B222D),
          ),
        ),
      ),
    );
  }
}
