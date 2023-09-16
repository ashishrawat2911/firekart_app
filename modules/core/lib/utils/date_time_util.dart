/*
 * ----------------------------------------------------------------------------
 *
 * This file is part of the FireKart open-source project, available at:
 * https://github.com/ashishrawat2911/firekart
 *
 * Created by: Ashish Rawat
 * ----------------------------------------------------------------------------
 *
 * Copyright (c) 2020 Ashish Rawat
 *
 * Licensed under the MIT License.
 *
 * ----------------------------------------------------------------------------
 */
import 'package:intl/intl.dart';

String formatDateTime(DateTime dateTime) {
  final formattedDate = DateFormat('yyyy-MM-dd – kk:mm').format(dateTime);
  return formattedDate;
}

String formatCurrentDateTime() {
  final now = DateTime.now();
  final formattedDate = DateFormat('yyyy-MM-dd – kk:mm').format(now);
  return formattedDate;
}

String getTimeFromTimeStamp(String timestamp) {
  try {
    final dateTime =
        DateTime.fromMillisecondsSinceEpoch(int.parse(timestamp) * 1000);

    final day = dateTime.day;
    final month = getMonthFromMonthNumber(dateTime.month);
    final year = dateTime.year;

    return '$day $month $year';
  } catch (E) {
    return '';
  }
}

String getOrderedTime(String dateTime) {
  String getTime(DateTime dateTime) {
    return "${dateTime.hour > 12 ? dateTime.hour - 12 : dateTime.hour}:${dateTime.minute} ${dateTime.hour > 12 ? "PM" : "AM"}";
  }

  final DateTime dateT = DateTime.parse(dateTime);
  return '${getMonthFromMonthNumber(dateT.month)} ${dateT.day} , ${dateT.year} at ${getTime(dateT)}';
}

String getMonthFromMonthNumber(int month) {
  switch (month) {
    case 1:
      return 'January';
    case 2:
      return 'February';
    case 3:
      return 'March';
    case 4:
      return 'April';
    case 5:
      return 'May';
    case 6:
      return 'June';
    case 7:
      return 'July';
    case 8:
      return 'August';
    case 9:
      return 'September';
    case 10:
      return 'October';
    case 11:
      return 'November';
    case 12:
      return 'December';
    default:
      return 'January';
  }
}

String getTimeDifference() {
  final birthday = DateTime(1967, 10, 12);
  final date2 = DateTime.now();
  final difference = date2.difference(birthday).inHours;
  return difference.toString();
}
