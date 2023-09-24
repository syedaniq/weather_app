import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Sunrise extends StatelessWidget {
  const Sunrise(this.sunriseTime, {super.key});

  final DateTime sunriseTime;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Image(
          image: AssetImage(
            'assets/11.png',
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
              'Sunrise',
              style: TextStyle(
                fontSize: 16,
                color: Colors.white.withOpacity(0.75),
              ),
            ),
            Text(
              DateFormat('hh:mm a').format(sunriseTime),
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
