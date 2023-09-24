import 'package:flutter/material.dart';
import 'package:weather/weather.dart';

class MinTempRow extends StatelessWidget {
  const MinTempRow(this.minTemp, {super.key});

  final Temperature minTemp;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Image(
          image: AssetImage(
            'assets/14.png',
          ),
          height: 70,
        ),
        const SizedBox(
          width: 8,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Min Temp',
              style: TextStyle(
                fontSize: 16,
                color: Colors.white.withOpacity(0.75),
              ),
            ),
            Text(
              '${minTemp.celsius!.round()}°C',
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
            ),
          ],
        )
      ],
    );
  }
}
