import 'package:flutter/material.dart';

class WeatherImage extends StatelessWidget {
  const WeatherImage(this.weatherCode, {super.key});

  final int weatherCode;

  String selectWeatherImage() {
    switch (weatherCode) {
      case >= 200 && <= 232:
        return '1';
      case >= 300 && <= 321:
        return '2';
      case >= 500 && <= 531:
        return '3';
      case >= 600 && <= 622:
        return '4';
      case >= 701 && <= 781:
        return '5';
      case 800:
        return '6';
      case >= 801 && <= 804:
        return '7';
      default:
        return '6';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Image(
      image: AssetImage(
        'assets/${selectWeatherImage()}.png',
      ),
    );
  }
}
