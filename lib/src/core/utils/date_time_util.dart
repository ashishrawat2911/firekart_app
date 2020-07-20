import 'package:intl/intl.dart';

String formatDateTime(DateTime dateTime) {
  var formattedDate = DateFormat('yyyy-MM-dd – kk:mm').format(dateTime);
  return formattedDate;
}

String formatCurrentDateTime() {
  var now = DateTime.now();
  var formattedDate = DateFormat('yyyy-MM-dd – kk:mm').format(now);
  return formattedDate;
}

String getTimeFromTimeStamp(String timestamp) {
  try {
    var dateTime =
        DateTime.fromMillisecondsSinceEpoch(int.parse(timestamp) * 1000);

    var day = dateTime.day;
    var month = getMonthFromMonthNumber(dateTime.month);
    var year = dateTime.year;

    return "$day $month $year";
  } catch (E) {
    return "";
  }
}

getOrderedTime(String dateTime) {
  String getTime(DateTime dateTime) {
    return "${dateTime.hour > 12 ? dateTime.hour - 12 : dateTime.hour}:${dateTime.minute} ${dateTime.hour > 12 ? "PM" : "AM"}";
  }

  DateTime dateT = DateTime.parse(dateTime);
  return "${getMonthFromMonthNumber(dateT.month)} ${dateT.day} , ${dateT.year} at ${getTime(dateT)}";
}

String getMonthFromMonthNumber(int month) {
  switch (month) {
    case 1:
      return "January";
      break;
    case 2:
      return "February";
      break;
    case 3:
      return "March";
      break;
    case 4:
      return "April";
      break;
    case 5:
      return "May";
      break;
    case 6:
      return "June";
      break;
    case 7:
      return "July";
      break;
    case 8:
      return "August";
      break;
    case 9:
      return "September";
      break;
    case 10:
      return "October";
      break;
    case 11:
      return "November";
      break;
    case 12:
      return "December";
      break;
    default:
      return "January";
      break;
  }
}

String getTimeDifference() {
  var birthday = DateTime(1967, 10, 12);
  var date2 = DateTime.now();
  var difference = date2.difference(birthday).inHours;
  return difference.toString();
}
