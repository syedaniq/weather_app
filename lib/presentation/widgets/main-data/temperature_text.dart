import 'package:flutter/material.dart';

class TemperatureText extends StatelessWidget {
  const TemperatureText(this.temperature, {super.key});

  final String temperature;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        '$temperature°C',
        style: const TextStyle(
          fontSize: 54,
          fontWeight: FontWeight.w600,
          color: Colors.white,
        ),
      ),
    );
  }
}
