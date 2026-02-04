import 'package:fitness_app/constants.dart';
import 'package:fitness_app/core/functions/linear_gradient.dart';
import 'package:fitness_app/core/utls/styles.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class CustomBarChart extends StatelessWidget {
  const CustomBarChart({super.key});

  @override
  Widget build(BuildContext context) {
    return BarChart(
      curve: Curves.bounceInOut,
      duration: Duration(seconds: 3),
      BarChartData(
        minY: 0,
        maxY: 250,
        barGroups: [
          BarChartGroupData(
            x: 1,
            barRods: [
              BarChartRodData(
                toY: 210,
                width: 16,
                gradient: linearGradient(buttonColorStart, buttonColorEnd),
              ),
            ],
          ),
          BarChartGroupData(
            x: 2,
            barRods: [
              BarChartRodData(
                toY: 190,
                width: 16,
                gradient: linearGradient(buttonColorStart, buttonColorEnd),
              ),
            ],
          ),
          BarChartGroupData(
            x: 3,
            barRods: [
              BarChartRodData(
                toY: 160,
                width: 16,
                gradient: linearGradient(buttonColorStart, buttonColorEnd),
              ),
            ],
          ),
          BarChartGroupData(
            x: 4,
            barRods: [
              BarChartRodData(
                toY: 210,
                width: 16,
                gradient: linearGradient(buttonColorStart, buttonColorEnd),
              ),
            ],
          ),
        ],
        titlesData: FlTitlesData(
          bottomTitles: AxisTitles(
            sideTitles: SideTitles(
              reservedSize: 35,
              showTitles: true,
              getTitlesWidget: (value, meta) {
                return Padding(
                  padding: const EdgeInsets.only(top: 8),
                  child: Text(
                    'week ${value.toInt()}',
                    style: Styles.mediumTextStyle10.copyWith(
                      color: Color(0xffA1A1AA),
                    ),
                  ),
                );
              },
            ),
          ),
          topTitles: const AxisTitles(
            sideTitles: SideTitles(showTitles: false),
          ),
          leftTitles: AxisTitles(
            sideTitles: SideTitles(
              showTitles: true,
              interval: 25,
              getTitlesWidget: (value, meta) {
                return FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Text(
                    value.toInt().toString(),
                    style: Styles.mediumTextStyle10.copyWith(
                      color: Color(0xffA1A1AA),
                    ),
                  ),
                );
              },
            ),
          ),
          rightTitles: const AxisTitles(
            sideTitles: SideTitles(showTitles: false),
          ),
        ),
        gridData: const FlGridData(
          drawHorizontalLine: false,
          drawVerticalLine: false,
        ),
        backgroundColor: Colors.transparent,
        borderData: FlBorderData(show: false),
      ),
    );
  }
}
