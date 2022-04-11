import 'package:json_annotation/json_annotation.dart';
part 'transaction_model.g.dart';

@JsonSerializable(
  fieldRename: FieldRename.pascal,
  explicitToJson: true,
  includeIfNull: false,
)
class TransactionModel {
  const TransactionModel({
    this.reasonCode,
    this.publicId,
    this.terminalUrl,
    this.transactionId,
    this.amount,
    this.currency,
    this.currencyCode,
    this.paymentAmount,
    this.paymentCurrency,
    this.paymentCurrencyCode,
    this.invoiceId,
    this.accountId,
    this.email,
    this.description,
    this.createdDate,
    this.createdDateIso,
    this.testMode,
    this.ipAddress,
    this.ipCountry,
    this.ipCity,
    this.ipRegion,
    this.ipDistrict,
    this.ipLatitude,
    this.ipLongitude,
    this.cardFirstSix,
    this.cardLastFour,
    this.cardExpDate,
    this.cardType,
    this.issuerBankCountry,
    this.issuer,
    this.cardTypeCode,
    this.status,
    this.statusCode,
    this.cultureName,
    this.reason,
    this.cardHolderMessage,
    this.type,
    this.refunded,
    this.name,
    this.token,
    this.gatewayName,
    this.applePay,
    this.androidPay,
    this.walletType,
    this.totalFee,
    this.paReq,
    this.acsUrl,
  });

  final int? reasonCode;
  final String? publicId;
  final String? terminalUrl;
  final int? transactionId;
  final int? amount;
  final String? currency;
  final int? currencyCode;
  final int? paymentAmount;
  final String? paymentCurrency;
  final int? paymentCurrencyCode;
  final String? invoiceId;
  final String? accountId;
  final String? email;
  final String? description;
  final String? createdDate;
  final String? createdDateIso;
  final bool? testMode;
  final String? ipAddress;
  final String? ipCountry;
  final String? ipCity;
  final String? ipRegion;
  final String? ipDistrict;
  final double? ipLatitude;
  final double? ipLongitude;
  final String? cardFirstSix;
  final String? cardLastFour;
  final String? cardExpDate;
  final String? cardType;
  final String? issuerBankCountry;
  final String? issuer;
  final int? cardTypeCode;
  final String? status;
  final int? statusCode;
  final String? cultureName;
  final String? reason;
  final String? cardHolderMessage;
  final int? type;
  final bool? refunded;
  final String? name;
  final String? token;
  final String? gatewayName;
  final bool? applePay;
  final bool? androidPay;
  final String? walletType;
  final int? totalFee;
  final String? paReq;
  final String? acsUrl;

  factory TransactionModel.fromJson(Map<String, dynamic> json) =>
      _$TransactionModelFromJson(json);

  Map<String, dynamic> toJson() => _$TransactionModelToJson(this);
}
