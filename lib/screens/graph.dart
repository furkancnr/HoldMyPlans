import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class graphPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Container(
      height: 550 ,
      child: SfCartesianChart(
        backgroundColor: Colors.white,
        title: ChartTitle(
          text: 'Todo Grafikleri'
        ),
        primaryXAxis: CategoryAxis(
          title: AxisTitle(text: 'Toplam Todo Sayisi')
        ),
        primaryYAxis: NumericAxis(
            title: AxisTitle(text: 'yapilan Todo Sayisi')
        ),
        series: <ChartSeries>[
          ColumnSeries<Data,String>(dataSource: getColumnData(), xValueMapper: (Data todo,_)=>todo.toplam, yValueMapper: (Data todo,_)=>todo.yp)
        ],
        
      ),
    );
  }


}

class Data{
  String toplam;
  final int yp;
  Data(this.toplam,this.yp);
}
dynamic getColumnData(){
  List<Data> columnData=<Data>[
    Data('5',3),
    Data('6',2),
  ];
  return columnData;
}