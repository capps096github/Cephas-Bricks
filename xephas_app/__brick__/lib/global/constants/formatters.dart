import 'package:intl/intl.dart';

final ugxFormatter = NumberFormat.simpleCurrency(
  decimalDigits: 0,
  name: 'UGX ',
);

///Formats the date to a string
final dateFormatter = DateFormat('EEE, dd MMMM yyyy - hh:mm a');

// TODO: Add other app specific formatters here