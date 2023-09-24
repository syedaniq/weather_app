import 'package:flutter/material.dart';

import 'sunrise.dart';
import 'sunset.dart';

class SunDataRow extends StatelessWidget {
  const SunDataRow(this.sunrise, this.sunset, {super.key});

  final DateTime sunrise;
  final DateTime sunset;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Sunrise(sunrise),
        Sunset(sunset),
      ],
    );
  }
}
