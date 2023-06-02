// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:fl_chart/fl_chart.dart';

// Project imports:
import 'package:exchangerates/conf/enums/weekdays_enum.dart';
import 'package:exchangerates/conf/values/color_constants.dart';
import 'package:exchangerates/conf/values/edge_insets_constants.dart';
import 'package:exchangerates/feature/currency_details/widgets/chart/label.dart';
import 'package:exchangerates/theme/text/text_14.dart';
import 'package:exchangerates/utils/currency_helper.dart';

class CurrencyDetailsChart extends StatelessWidget {
  //
  final List<double> rates;

  CurrencyDetailsChart({required this.rates});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        MyText14(
            'Today is ${MyCurrencyHelper.getWeekdayByIndex(DateTime.now().weekday).title}'),
        SizedBox(height: 24),
        Expanded(
          child: LineChart(
            LineChartData(
              borderData: FlBorderData(show: false),
              lineBarsData: [
                LineChartBarData(
                  color: MyColors.primary,
                  spots: rates
                      .asMap()
                      .map((index, value) => MapEntry(
                            index,
                            FlSpot(index.toDouble(), value),
                          ))
                      .values
                      .toList(),
                  isCurved: true,
                  barWidth: 3,
                  dotData: FlDotData(show: false),
                ),
              ],
              minX: 0,
              maxX: rates.length.toDouble() - 1,
              minY: 0,
              maxY: 10,
              gridData: FlGridData(show: false),
              titlesData: FlTitlesData(
                show: true,
                topTitles: AxisTitles(
                  sideTitles: SideTitles(
                    showTitles: false,
                  ),
                ),
                rightTitles: AxisTitles(
                  sideTitles: SideTitles(
                    showTitles: false,
                  ),
                ),
                bottomTitles: AxisTitles(
                  sideTitles: SideTitles(
                    interval: 1,
                    showTitles: true,
                    getTitlesWidget: (value, meta) => CurrencyDetailsChartLabel(
                      padding: MyEdgeInsets.top10,
                      title: MyCurrencyHelper.getWeekdayByIndex(value.toInt())
                          .code,
                    ),
                  ),
                ),
                leftTitles: AxisTitles(
                  sideTitles: SideTitles(
                    interval: 2,
                    showTitles: true,
                    reservedSize: 30,
                    getTitlesWidget: (value, meta) => CurrencyDetailsChartLabel(
                      padding: MyEdgeInsets.right6,
                      title: value.toStringAsFixed(1),
                    ),
                  ),
                ),
              ),
              lineTouchData: LineTouchData(
                touchTooltipData: LineTouchTooltipData(
                  tooltipBgColor: MyColors.white,
                  tooltipBorder: BorderSide(color: MyColors.grey),
                  tooltipRoundedRadius: 0,
                ),
              ),
            ),

            swapAnimationDuration: Duration(milliseconds: 150), // Optional
            swapAnimationCurve: Curves.linear,
          ),
        ),
      ],
    );
  }
}
