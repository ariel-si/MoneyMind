import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class Grafico extends StatelessWidget {
  Grafico({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<_PieData> pieData = [
      _PieData("Vareavel", 33, "1.500,00"),
      _PieData("Fixo", 33, "1.500,00"),
      _PieData("Receita", 34, "1.503,00"),
    ];
    return Container(
      height: 250,
      margin: EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.grey,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
              color: Colors.grey, //New
              blurRadius: 25.0,
              offset: Offset(1, 15))
        ],
      ),
      child: Center(
          child: SfCircularChart(
              legend: Legend(
                isVisible: false,
              ),
              series: <PieSeries<_PieData, String>>[
            PieSeries<_PieData, String>(
              dataSource: pieData,
              explode: true,
              xValueMapper: (_PieData data, _) => data.xData,
              yValueMapper: (_PieData data, _) => data.yData,
              dataLabelMapper: (_PieData data, _) => data.text,
              dataLabelSettings: DataLabelSettings(
                isVisible: true,
              ),
            ),
          ])),
    );
  }
}

class _PieData {
  final String xData;
  final num yData;
  final String text;

  _PieData(this.xData, this.yData, this.text);
}
