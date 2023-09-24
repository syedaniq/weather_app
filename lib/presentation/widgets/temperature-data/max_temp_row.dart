import 'package:flutter/material.dart';
import 'package:weather/weather.dart';

class MaxTempRow extends StatelessWidget {
  const MaxTempRow(this.maxTemp, {super.key});

  final Temperature maxTemp;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Image(
          image: AssetImage(
            'assets/13.png',
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
              'Max Temp',
              style: TextStyle(
                fontSize: 16,
                color: Colors.white.withOpacity(0.75),
              ),
            ),
            Text(
              '${maxTemp.celsius!.round()}°C',
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
