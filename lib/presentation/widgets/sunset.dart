import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Sunset extends StatelessWidget {
  const Sunset(this.sunsetTime, {super.key});

  final DateTime sunsetTime;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Image(
          image: AssetImage(
            'assets/12.png',
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
              'Sunset',
              style: TextStyle(
                fontSize: 16,
                color: Colors.white.withOpacity(0.75),
              ),
            ),
            Text(
              DateFormat('hh:mm a').format(sunsetTime),
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
