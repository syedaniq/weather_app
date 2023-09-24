import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DateTimeText extends StatelessWidget {
  const DateTimeText(this.dateTime, {super.key});

  final DateTime dateTime;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        DateFormat('EEEE dd - hh:mm a').format(dateTime),
        // 'Sunday 24 - 01:13 PM',
        style: TextStyle(
          fontSize: 16,
          color: Colors.white.withOpacity(0.75),
        ),
      ),
    );
  }
}
