import 'package:flutter/material.dart';

class LocationText extends StatelessWidget {
  const LocationText(this.cityName, {super.key});

  final String cityName;

  @override
  Widget build(BuildContext context) {
    return Text(
      '📍 $cityName',
      style: const TextStyle(
        fontSize: 16,
        color: Colors.white,
      ),
    );
  }
}
