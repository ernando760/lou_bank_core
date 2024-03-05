import 'dart:developer';

import 'package:fl_chart/fl_chart.dart';
import 'dart:math' as math;

import 'package:lou_bank_core/src/widgets/charts/lou_bank_line_chart/lou_bank_line_chart.dart';

class LineChartController {
  List<LineChartInfo> lineData = [
    LineChartInfo(price: 1651.0281437743404, date: DateTime(2024, 1, 20)),
    LineChartInfo(price: 1157.0025728824162, date: DateTime(2024, 2, 10)),
    LineChartInfo(price: 1.567184618718409, date: DateTime(2024, 3, 21)),
    LineChartInfo(price: 726.4120303800731, date: DateTime(2024, 4, 13)),
    LineChartInfo(price: 573.9007685054657, date: DateTime(2024, 5, 15)),
    LineChartInfo(price: 389.7001773634514, date: DateTime(2024, 6, 20)),
    LineChartInfo(price: 148.6242182088924, date: DateTime(2024, 7, 7)),
    LineChartInfo(price: 220.81077872663823, date: DateTime(2024, 8, 20)),
    LineChartInfo(price: 864.2267140330762, date: DateTime(2024, 9, 29)),
    LineChartInfo(price: 1660.1711445571143, date: DateTime(2024, 10, 11)),
    LineChartInfo(price: 1983.0911087143604, date: DateTime(2024, 11, 14)),
    LineChartInfo(price: 1076.4356431605975, date: DateTime(2024, 12, 1)),
    LineChartInfo(price: 1000.4356431605975, date: DateTime(2025, 1, 1))
  ];
  List<FlSpot> datasSpot = [];
  final months = [
    "Jan",
    "Feb",
    "Mar",
    "Abr",
    "May",
    "Jun",
    "Jul",
    "Aug",
    "Sep",
    "Oct",
    "Nov",
    "Dec"
  ];

  double maxY = 0;
  double minY = 0;
  double maxX = 0;

  List<DateTime> getDates() {
    final ramdomDays = math.Random().nextInt(30) + 1;
    const monthTotal = 12;
    final dates = <DateTime>[];
    for (var m = 0; m < monthTotal; m++) {
      dates.add(DateTime(2024, m + 1, ramdomDays));
    }
    return dates;
  }

  void setDatas() {
    // lineData = List.generate(12, (index) {
    //   return LineChartInfo(
    //       price: math.Random(index).nextDouble() * 2000,
    //       date: getDates()[index]);
    // });

    maxX = lineData.length.toDouble();
    maxY = 0;
    minY = double.infinity;
    for (var item in lineData) {
      maxY = item.price > maxY ? item.price : maxY;
      minY = item.price < minY ? item.price : minY;
    }
    for (var i = 0; i < lineData.length; i++) {
      datasSpot.add(FlSpot(i.toDouble(), lineData[i].price));
    }
    log("$lineData", name: "lineData");
  }

  String getMonth(int indexMonth) {
    if (indexMonth >= months.length) {
      return months[0];
    }
    return months[indexMonth];
  }
}
