import 'package:cloudpayments/api/models/models.dart';
import 'package:dio/dio.dart';

export 'models/models.dart';

part 'cloudpayments_api_urls.dart';

class CloudPaymentsAPI {
  CloudPaymentsAPI({
    required String clientId,
    required String secret,
  }) {
    _dio = Dio(
      BaseOptions(
        baseUrl: _CloudPaymentsUrls.apiUrl,
        headers: {
          'Content-Type': 'application/json',
          "CLOUD_PAYMENTS_CLIENT_ID": clientId,
          "CLOUD_PAYMENTS_SECRET": secret,
        },
      ),
    );
  }

  late final Dio _dio;

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
      _CloudPaymentsUrls.authUrl,
      data: payRequest.toJson(),
    );

    return Transaction.fromJson(response.data);
  }

  Future<Transaction> post3ds(Post3dsRequest request) async {
    final response = await _dio.post(
      _CloudPaymentsUrls.post3ds,
      data: request.toJson(),
    );

    return Transaction.fromJson(response.data);
  }
}
