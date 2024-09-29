import 'package:flutter/material.dart';

class DatetimeAction {
  static DateTime updateDate(TimeOfDay nowTime, DateTime newDate) {
    return DateTime(
      newDate.year,
      newDate.month,
      newDate.day,
      nowTime.hour,
      nowTime.minute,
    );
  }

  static DateTime updateTime(DateTime nowDate, TimeOfDay newTime) {
    return DateTime(
      nowDate.year,
      nowDate.month,
      nowDate.day,
      newTime.hour,
      newTime.minute,
    );
  }
}
