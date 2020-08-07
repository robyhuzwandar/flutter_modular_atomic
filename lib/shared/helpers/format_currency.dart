import 'package:intl/intl.dart';

final formatCurrency = NumberFormat.simpleCurrency(
  locale: 'IDR',
  decimalDigits: 0,
);

String priceFormat(double price) {
  return formatCurrency.format(price);
}
