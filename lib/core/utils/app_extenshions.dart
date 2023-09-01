import 'package:intl/intl.dart';

extension StringToDateTimeExtension on String {
  DateTime? toDateTime() {
    try {
      return DateTime.parse(this);
    } catch (e) {
      return null;
    }
  }

  String toDateTimeFormat({String format = "dd-MMM-yyyy"}) {
    return DateFormat(format).format(DateTime.parse(this));
  }
}
