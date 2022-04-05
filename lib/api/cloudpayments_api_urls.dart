part of 'cloudpayments_api.dart';

abstract class _CloudPaymentsUrls {
  _CloudPaymentsUrls._();

  static String get apiUrl => 'https://api.cloudpayments.ru/';

  static String get authUrl => 'payments/cards/auth';
  static String get chargeUrl => 'payments/cards/charge';
  static String get post3ds => 'payments/ThreeDSCallback';
  static String get test => 'test';
}
