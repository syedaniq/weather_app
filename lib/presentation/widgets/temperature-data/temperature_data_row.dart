import 'package:flutter/material.dart';
import 'package:weather/weather.dart';

import 'max_temp_row.dart';
import 'min_temp_row.dart';

class TemperatureDataRow extends StatelessWidget {
  const TemperatureDataRow(this.tempMax, this.tempMin, {super.key});

  final Temperature tempMax;
  final Temperature tempMin;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        MaxTempRow(tempMax),
        MinTempRow(tempMin),
      ],
    );
  }
}
