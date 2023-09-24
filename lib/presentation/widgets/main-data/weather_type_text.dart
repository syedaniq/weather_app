import 'package:flutter/material.dart';

class WeatherTypeText extends StatelessWidget {
  const WeatherTypeText(this.weatherType, {super.key});

  final String weatherType;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        weatherType.toUpperCase(),
        style: const TextStyle(
          fontSize: 28,
          color: Colors.white,
        ),
      ),
    );
  }
}
