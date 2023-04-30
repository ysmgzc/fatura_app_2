import 'package:fatura_app_2/constants.dart';
import 'package:fatura_app_2/navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;

class GenelDurumScreen extends StatelessWidget {
  const GenelDurumScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<SalesData> data = [
      SalesData("Ocak", 250),
      SalesData("Şubat", 300),
      SalesData("Mart", 100),
      SalesData("Nisan", 400),
      SalesData("Mayıs", 200),
      SalesData("Haziran", 400),
      SalesData("Temmuz", 300),
      SalesData("Ağustos", 300),
      SalesData("Eylül", 250),
      SalesData("Ekim", 500),
      SalesData("Kasım", 400),
      SalesData("Aralık", 250),
    ];

    final series = charts.Series(
      id: "Satışlar",
      data: data,
      domainFn: (SalesData sales, _) => sales.month,
      measureFn: (SalesData sales, _) => sales.sales,
      colorFn: (_, __) => charts.MaterialPalette.blue.shadeDefault,
      labelAccessorFn: (SalesData sales, _) => '${sales.sales}',
    );

    return Scaffold(
      drawer: const NavBar(),
      appBar: AppBar(
        backgroundColor: kAppBarColor,
        centerTitle: true,
        title: const Text(
          'Genel Bakış',
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children:  [
            const Text(
              "Aylara Göre Satışlar",
              style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16.0),
            Expanded(
              child: charts.BarChart(
                [series],
                animate: true,
                vertical: true,
                barGroupingType: charts.BarGroupingType.grouped,
                barRendererDecorator: charts.BarLabelDecorator<String>(
                  labelPosition: charts.BarLabelPosition.inside,
                  insideLabelStyleSpec:const charts.TextStyleSpec(
                    color: charts.Color.white,
                  ),
                ),
                domainAxis:const charts.OrdinalAxisSpec(
                  renderSpec: charts.SmallTickRendererSpec(
                    labelRotation: 60,
                    labelAnchor: charts.TickLabelAnchor.centered,
                    labelStyle: charts.TextStyleSpec(
                      fontSize: 12,
                      color: charts.MaterialPalette.black,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SalesData {
  final String month;
  final int sales;

  SalesData(this.month, this.sales);
}
