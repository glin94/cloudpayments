import 'package:cloudpayments/api/models/models.dart';
import 'package:dio/dio.dart';

export 'models/models.dart';

class CloudPaymentsAPI {
  CloudPaymentsAPI({
    required this.clientId,
    required this.secret,
  }) {
    _dio = Dio(
      BaseOptions(
        baseUrl: CloudPaymentsUrls.apiUrl,
        headers: {
          'Content-Type': 'application/json',
          "CLOUD_PAYMENTS_CLIENT_ID": clientId,
          "CLOUD_PAYMENTS_SECRET": secret,
        },
      ),
    );
  }

  late final Dio _dio;
  final String clientId;
  final String secret;

  ///```dart
  /// final request = PayRequest(
  ///   amount: amount,
  ///   currency: "RUB",
  ///   name: cardHolderName,
  ///   cardCryptogramPacket: cardCryptogramPacket,
  ///   invoiceId: "1122",
  ///   description: "Оплата товаров",
  ///   accountId: "123",
  ///   jsonData: {
  ///     "age": 27,
  ///     "name": "Ivan",
  ///     "phone": "+79998881122",
  ///   },
  /// );
  /// ```
  Future<Transaction> auth(PayRequest payRequest) async {
    final response = await _dio.post(
      CloudPaymentsUrls.authUrl,
      data: payRequest.toJson(),
    );

    return Transaction.fromJson(response.data);
  }

  Future<Transaction> post3ds(Post3dsRequest request) async {
    final response = await _dio.post(
      CloudPaymentsUrls.post3ds,
      data: request.toJson(),
    );

    return Transaction.fromJson(response.data);
  }
}

abstract class CloudPaymentsUrls {
  static String get apiUrl => 'https://api.cloudpayments.ru/';

  static String get authUrl => 'payments/cards/auth';
  static String get chargeUrl => 'payments/cards/charge';
  static String get post3ds => 'payments/ThreeDSCallback';
}
