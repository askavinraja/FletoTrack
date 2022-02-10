import 'dart:convert';
import 'dart:developer';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:saas_web_app/app/modules/data_table/components/data_source_employee.dart';
import 'package:saas_web_app/app/routes/app_pages.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';

class DataTable extends StatefulWidget {
  const DataTable({Key key}) : super(key: key);

  @override
  _DataTableState createState() => _DataTableState();
}

class _DataTableState extends State<DataTable> {
  EmployeeDataGridSource columnTypesDataGridSource;

  /// Determine to decide whether the device in landscape or in portrait
  bool isLandscapeInMobileView;

  bool isWebOrDesktop;
  var name = "";

  Map<String, dynamic> maps = {};

  SfDataGrid _buildDataGrid(BuildContext context) {
    return SfDataGrid(
        source: columnTypesDataGridSource,
        // allowSorting: true,
        allowEditing: true,
        allowSwiping: true,
        highlightRowOnHover: true,
        allowColumnsResizing: true,
        isScrollbarAlwaysShown: true,
        columnWidthMode: ColumnWidthMode.fill,
        onCellTap: (d) {
          maps = {};
          columnTypesDataGridSource.rows[d.rowColumnIndex.rowIndex - 1]
              .getCells()
              .forEach((DataGridCell<dynamic> element) {
            // var e = Employee.fromMap(jsonDecode(element.value));
            // log(e.toJson().toString());
            log(element.value.toString());
            name = element.value;
            maps.putIfAbsent("${element.columnName.toString()}",
                () => "${element.value.toString()}");

            log(maps.toString());

            // log(e.toString());
          });
          var employee = Employee.fromMap(maps);
          Fluttertoast.showToast(msg: "${employee.toMap()}");
          Get.toNamed(Routes.VIEW_PROFILE, arguments: {"employee": employee});
        },
        columns: <GridColumn>[
          GridColumn(
              // allowSorting: true,
              width: 190,
              allowEditing: true,
              columnName: 'employeeName',
              label: Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(8.0),
                child: const Text(
                  'Employee Name',
                  overflow: TextOverflow.ellipsis,
                ),
              )),
          GridColumn(
            columnName: 'designation',
            width: (kIsWeb) ? 150 : 130,
            label: Container(
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.all(8.0),
              child: const Text(
                'Designation',
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ),
          GridColumn(
            columnName: 'mail',
            width: 180.0,
            label: Container(
              padding: const EdgeInsets.all(8.0),
              alignment: Alignment.centerLeft,
              child: const Text(
                'Mail',
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ),
          GridColumn(
            columnName: 'location',
            width: 105.0,
            label: Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.all(8.0),
              child: const Text(
                'Location',
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ),
          GridColumn(
            columnName: 'status',
            width: 105.0,
            label: Container(
                padding: const EdgeInsets.all(8.0),
                alignment: Alignment.center,
                child: const Text(
                  'Status',
                  overflow: TextOverflow.ellipsis,
                )),
          ),
          GridColumn(
              columnName: 'trustworthiness',
              width: 130,
              label: Container(
                  alignment: Alignment.centerLeft,
                  padding: const EdgeInsets.all(8.0),
                  child: const Text(
                    'Trustworthiness',
                    overflow: TextOverflow.ellipsis,
                  ))),
          GridColumn(
              columnName: 'softwareProficiency',
              width: 165,
              label: Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.all(8.0),
                  child: const Text(
                    'Software Proficiency',
                    overflow: TextOverflow.ellipsis,
                  ))),
          GridColumn(
            columnName: 'salary',
            width: 135,
            label: Container(
                padding: const EdgeInsets.all(8.0),
                alignment: Alignment.centerRight,
                child: const Text(
                  'Salary',
                  overflow: TextOverflow.ellipsis,
                )),
          ),
          GridColumn(
            columnName: 'address',
            width: 240,
            label: Container(
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.all(8.0),
              child: const Text(
                'Address',
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ),
          GridColumn(
            columnName: 'View',
            width: 260,
            label: Container(
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.all(8.0),
              child: const Text(
                'View',
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ),
        ]);
  }

  @override
  void initState() {
    super.initState();
    isWebOrDesktop = true;
    columnTypesDataGridSource = EmployeeDataGridSource();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    isLandscapeInMobileView = !isWebOrDesktop &&
        MediaQuery.of(context).orientation == Orientation.landscape;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white, body: _buildDataGrid(context));
  }
}
