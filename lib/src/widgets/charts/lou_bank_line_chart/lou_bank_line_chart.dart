import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'package:lou_bank_core/lou_bank_core.dart';

class LouBankLineChart extends StatefulWidget {
  const LouBankLineChart({super.key});

  @override
  State<LouBankLineChart> createState() => _LouBankLineChartState();
}

class _LouBankLineChartState extends State<LouBankLineChart> {
  late final LineChartController lineChartController;

  @override
  void initState() {
    super.initState();
    lineChartController = LineChartController();

    lineChartController.setDatas();
  }

  Widget _getTitle(double value, TitleMeta meta) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: SideTitleWidget(
          axisSide: meta.axisSide,
          space: 0,
          child: Text(
            lineChartController.getMonth(
                value.toInt() >= lineChartController.datasSpot.length - 1
                    ? (value.toInt() - lineChartController.datasSpot.length) + 1
                    : value.toInt()),
            style: TextStyleLouBank.caption12Regular
                .copyWith(fontSize: 13, color: const Color(0xFFB2D0CE)),
          )),
    );
  }

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.5,
      child: Stack(
        children: [
          SizedBox(
            // height: 245,
            child: LineChart(LineChartData(
                maxY: lineChartController.maxY,
                maxX: lineChartController.maxX,
                minY: lineChartController.minY,
                gridData: const FlGridData(show: false),
                titlesData: FlTitlesData(
                    leftTitles: const AxisTitles(sideTitles: SideTitles()),
                    rightTitles: const AxisTitles(sideTitles: SideTitles()),
                    topTitles: const AxisTitles(sideTitles: SideTitles()),
                    bottomTitles: AxisTitles(
                      drawBelowEverything: true,
                      sideTitles: SideTitles(
                          getTitlesWidget: _getTitle,
                          showTitles: true,
                          reservedSize: 25),
                    )),
                lineTouchData: LineTouchData(
                    getTouchedSpotIndicator: (barData, indicators) {
                      return indicators.map((index) {
                        const line = FlLine(strokeWidth: 0);
                        return TouchedSpotIndicatorData(line, FlDotData(
                          getDotPainter: (_, __, ___, ____) {
                            return FlDotCirclePainter(
                                strokeColor: const Color(0xFFB2D0CE),
                                strokeWidth: 5,
                                color: const Color(0xFF212121));
                          },
                        ));
                      }).toList();
                    },
                    touchTooltipData: LineTouchTooltipData(
                        tooltipRoundedRadius: 8,
                        tooltipPadding: const EdgeInsets.symmetric(
                            horizontal: 15, vertical: 4),
                        tooltipMargin: 18,
                        fitInsideHorizontally: true,
                        getTooltipItems: (data) {
                          return data
                              .map((e) => LineTooltipItem(
                                      "\$ ${e.y.toStringAsFixed(2)}",
                                      TextStyleLouBank.caption12Regular,
                                      children: [
                                        TextSpan(
                                            text:
                                                "\n ${lineChartController.getMonth(e.spotIndex)} ${DateFormat("dd, yyyy").format(lineChartController.lineData[e.spotIndex].date)}",
                                            style: TextStyleLouBank
                                                .caption12Regular
                                                .copyWith(fontSize: 7))
                                      ]))
                              .toList();
                        },
                        tooltipBgColor: ColorsLouBank.mint)),
                borderData: FlBorderData(show: false),
                lineBarsData: [
                  LineChartBarData(
                      spots: lineChartController.datasSpot,
                      isStrokeCapRound: true,
                      isCurved: true,
                      color: const Color(0xFFB2D0CE),
                      belowBarData: BarAreaData(
                          show: true,
                          gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [
                                const Color(0xFFB2D0CE).withOpacity(.1),
                                const Color(0xFFB2D0CE).withOpacity(.1),
                              ]),
                          spotsLine: const BarAreaSpotsLine(
                              show: true,
                              flLineStyle: FlLine(
                                  strokeWidth: 1,
                                  dashArray: [4, 10],
                                  color: Color(0xFF212121)))),
                      dotData: FlDotData(
                        show: false,
                        getDotPainter: (flSpot, p1, line, p3) {
                          return FlDotCirclePainter(
                              strokeWidth: 4,
                              strokeColor: const Color(0xFFB2D0CE),
                              color: const Color(0xFF212121));
                        },
                      ))
                ])),
          ),
        ],
      ),
    );
  }
}

class LineChartInfo {
  final double price;
  final DateTime date;

  LineChartInfo({required this.price, required this.date});

  @override
  String toString() => 'LineChartInfo(price: $price, date: $date)';
}
