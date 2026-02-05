import 'package:fitness_app/constants.dart';
import 'package:fitness_app/core/functions/linear_gradient.dart';
import 'package:fitness_app/core/utls/styles.dart';
import 'package:fitness_app/features/tracking/presentation/manager/cubits/weight/weight_cubit.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomBarChart extends StatelessWidget {
  const CustomBarChart({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WeightCubit, WeightState>(
      builder: (context, state) {
        List<BarChartGroupData> barGroups = [];
        if (state is GetWeightSuccess) {
          final weights = state.weights.length > 9
              ? state.weights.sublist(state.weights.length - 9)
              : state.weights;

          barGroups = List.generate(weights.length, (index) {
            return BarChartGroupData(
              x: index + 1,
              barRods: [
                BarChartRodData(
                  toY: double.tryParse(weights[index]) ?? 0.0,
                  gradient: linearGradient(buttonColorStart, buttonColorEnd),
                  width: 15,
                ),
              ],
            );
          });
        } else {
          barGroups = [];
        }

        return BarChart(
          curve: Curves.bounceInOut,
          duration: const Duration(seconds: 3),
          BarChartData(
            minY: 0,
            maxY: 250,
            barGroups: barGroups,
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
                          color: const Color(0xffA1A1AA),
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
                          color: const Color(0xffA1A1AA),
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
      },
    );
  }
}
