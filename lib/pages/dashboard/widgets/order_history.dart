import 'package:deshi_mart/const/data.dart';
import 'package:deshi_mart/models/product_model.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';

class OrderHistory extends StatelessWidget {
  const OrderHistory({super.key});

  @override
  Widget build(BuildContext context) {
    final productDataSource = ProductGridSource(products);

    return SfDataGrid(
        allowEditing: false,
        allowFiltering: false,
        allowSorting: true,
        showColumnHeaderIconOnHover: true,
        gridLinesVisibility: GridLinesVisibility.none,
        source: productDataSource,
        columns: [
          GridColumn(
              width: 100,
              columnName: "id",
              label: const ColumnHeader(label: "ID")),
          GridColumn(
              width: 150,
              columnName: "name",
              label: const ColumnHeader(label: "Name")),
          GridColumn(
              width: 100,
              columnName: "salePrice",
              label: const ColumnHeader(label: "Price")),
          GridColumn(
              width: 100,
              columnName: "isActive",
              label: const ColumnHeader(label: "Active")),
          GridColumn(
              width: 100,
              columnName: "stock",
              label: const ColumnHeader(label: "Stock")),
          GridColumn(
              width: 110,
              columnName: "supplier",
              label: const ColumnHeader(label: "Supplier")),
          GridColumn(
              width: 100,
              columnName: "unit",
              label: const ColumnHeader(label: "Unit")),
          GridColumn(
              width: 150,
              columnName: "purchasePrice",
              label: const ColumnHeader(label: "Purchase Price")),
          GridColumn(
              width: 150,
              columnName: "tags",
              label: const ColumnHeader(label: "Tags")),
          GridColumn(
              width: 100,
              columnName: "action",
              label: const ColumnHeader(label: "Actions")),
        ]);
  }
}

class ColumnHeader extends StatelessWidget {
  final String label;
  const ColumnHeader({super.key, required this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.primary.withOpacity(0.2)),
      child: Center(
        child: Text(
          label,
          style: TextStyle(color: Theme.of(context).colorScheme.primary),
        ),
      ),
    );
  }
}

class ProductGridSource extends DataGridSource {
  late List<DataGridRow> dataGridRows;

  ProductGridSource(List<ProductModel> products) {
    dataGridRows = products
        .map(
          (product) => DataGridRow(
            cells: [
              DataGridCell(columnName: 'id', value: product.id),
              DataGridCell(columnName: 'Name', value: product.name),
              DataGridCell(columnName: 'sellPrice', value: product.sellPrice),
              DataGridCell(columnName: 'isActive', value: product.isActive),
              DataGridCell(columnName: 'stock', value: product.stock),
              DataGridCell(columnName: 'supplier', value: product.supplier),
              DataGridCell(columnName: 'unit', value: product.unit),
              DataGridCell(
                  columnName: 'purchasePrice', value: product.purchasePrice),
              DataGridCell(columnName: 'tags', value: product.tags),
              DataGridCell(columnName: 'action', value: product.id),
            ],
          ),
        )
        .toList();
  }

  @override
  List<DataGridRow> get rows => dataGridRows;

  @override
  DataGridRowAdapter? buildRow(DataGridRow row) {
    return DataGridRowAdapter(
      cells: row.getCells().map(
        (cell) {
          if (cell.columnName == 'action') {
            return ElevatedButton(onPressed: () {}, child: const Text("Edit"));
          } else {
            return Center(
              child: Text(cell.value.toString(),
                  style: const TextStyle(color: Colors.black)),
            );
          }
        },
      ).toList(),
    );
  }
}
