import 'package:flutter/material.dart';
import 'package:sync_flutters_charts/charts.dart';
import 'package:syncfusion_flutter_core/core.dart';

class graph extends StatefulWidget {
  @override
  graphState createState() => graphState();
}

class graphState extends State<graph> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Syncfusion Flutter chart'),
        ),
        body: showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            content: Container(
                // ignore: prefer_const_constructors
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                child: SfCartesianChart(
                    primaryXAxis: CategoryAxis(),
                    // Chart title
                    title: ChartTitle(text: 'Half yearly sales analysis'),
                    // Enable legend
                    legend: Legend(isVisible: true),
                    // Enable tooltip
                    tooltipBehavior: TooltipBehavior(enable: true),
                    series: <ChartSeries<SalesData, String>>[
                      LineSeries<SalesData, String>(
                          dataSource: <SalesData>[
                            SalesData('Jan', 35),
                            SalesData('Feb', 28),
                            SalesData('Mar', 34),
                            SalesData('Apr', 32),
                            SalesData('May', 40)
                          ],
                          xValueMapper: (SalesData sales, _) => sales.year,
                          yValueMapper: (SalesData sales, _) => sales.sales,
                          // Enable data label
                          dataLabelSettings: DataLabelSettings(isVisible: true))
                    ])),
          );,
        };
    ),);
  }
}

class SalesData {
  SalesData(this.year, this.sales);

  final String year;
  final double sales;
}
