import 'package:deshi_mart/const/data.dart';
import 'package:deshi_mart/models/product_model.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';

class ProductTableData extends StatelessWidget {
  const ProductTableData({super.key});

  get productDataSource => null;

  @override
  Widget build(BuildContext context) {
    final productDataSource = ProductGridSource(products);

    return Container(
      height: 600,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Theme.of(context).colorScheme.onPrimaryContainer,
      ),
      padding: const EdgeInsets.all(0),
      child: SfDataGrid(
          allowEditing: false,
          allowFiltering: true,
          allowSorting: true,
          showColumnHeaderIconOnHover: true,
          headerGridLinesVisibility: GridLinesVisibility.none,
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
                width: 180,
                columnName: "purchasePrice",
                label: const ColumnHeader(label: "Purchase Price")),
            GridColumn(
                width: 170,
                columnName: "tags",
                label: const ColumnHeader(label: "Tags")),
            GridColumn(
                width: 100,
                columnName: "action",
                label: const ColumnHeader(label: "Actions")),
          ]),
    );
  }
}

class ColumnHeader extends StatelessWidget {
  final String label;
  const ColumnHeader({super.key, required this.label});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        label,
        style: TextStyle(
            color: Theme.of(context).colorScheme.onSecondaryContainer),
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
            return Row(children: [
              IconButton(onPressed: () {}, icon: const Icon(Icons.print)),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.zoom_out_map_rounded)),
            ]);
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
