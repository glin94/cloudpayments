import 'package:cloudpayments/cloudpayments.dart';
import 'package:example/network/network.dart';
import 'package:example/network/urls.dart';

class Api {
  final _network = Network(Constants.apiUrl);

  Future<Transaction> auth(
    String cardCryptogramPacket,
    String cardHolderName,
    int amount,
  ) async {
    final request = PayRequest(
      amount: amount,
      currency: "RUB",
      name: cardHolderName,
      cardCryptogramPacket: cardCryptogramPacket,
      invoiceId: "1122",
      description: "Оплата товаров",
      accountId: "123",
      ipAddress: '',
    );

    final response = await _network.post(
      Constants.authUrl,
      headers: {'Content-Type': 'application/json'},
      body: request.toJson(),
    );

    return Transaction.fromJson(response.data);
  }

  Future<Transaction> charge(
      String cardCryptogramPacket, String cardHolderName, int amount) async {
    final request = PayRequest(
      amount: amount,
      currency: "RUB",
      name: cardHolderName,
      cardCryptogramPacket: cardCryptogramPacket,
      invoiceId: "1122",
      description: "Оплата товаров",
      accountId: "123",
      ipAddress: '',
    );

    final response = await _network.post(
      Constants.chargeUrl,
      headers: {'Content-Type': 'application/json'},
      body: request.toJson(),
    );

    return Transaction.fromJson(response.data);
  }

  Future<Transaction> post3ds(String transactionId, String paRes) async {
    final request = Post3dsRequest(transactionId, paRes);

    final response = await _network.post(
      Constants.post3ds,
      headers: {'Content-Type': 'application/json'},
      body: request.toJson(),
    );

    return Transaction.fromJson(response.data);
  }
}
