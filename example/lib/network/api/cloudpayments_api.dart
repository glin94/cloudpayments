import 'dart:convert';
import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:example/network/api/models/models.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

export 'models/models.dart';

part 'cloudpayments_api_urls.dart';

class CloudPaymentsAPI {
  CloudPaymentsAPI({
    required String clientId,
    required String secret,
  }) {
    final token = base64.encode(latin1.encode('$clientId:$secret'));
    final authstr = 'Basic ' + token.trim();

    _dio = Dio(
      BaseOptions(
        baseUrl: _CloudPaymentsUrls.apiUrl,
        headers: {
          'Content-Type': 'application/json',
          'Authorization': authstr,
        },
      ),
    )..interceptors.add(
        PrettyDioLogger(
          requestBody: true,
          requestHeader: true,
          responseBody: true,
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

  Future<Transaction> charge(PayRequest payRequest) async {
    final response = await _dio.post(
      _CloudPaymentsUrls.chargeUrl,
      data: payRequest.toJson(),
    );

    return Transaction.fromJson(response.data);
  }

  Future<void> test() async {
    final response = await _dio.post(_CloudPaymentsUrls.test);
    log('$response');
  }
}
