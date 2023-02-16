import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class Grafico extends StatefulWidget {

  var valor;

  Grafico({Key? key, required this.valor}) : super(key: key);

  @override
  State<Grafico> createState() => _GraficoState();
}

class _GraficoState extends State<Grafico> {
  @override
  Widget build(BuildContext context) {
    List<_PieData> pieData = [
      _PieData("Gastos", 50, "${widget.valor}"),
      _PieData("Receita", 50, "${widget.valor}"),
    ];
    return Container(
      height: 250,
      margin: const EdgeInsets.only(left: 15, right: 15, top: 15),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: const [
          BoxShadow(
            color: Colors.grey,
            offset: Offset(0.0, 2.0), //(x,y)
            blurRadius: 6.0,
          ),
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
