// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TransactionModel _$TransactionModelFromJson(Map<String, dynamic> json) =>
    TransactionModel(
      reasonCode: json['ReasonCode'] as int?,
      publicId: json['PublicId'] as String?,
      terminalUrl: json['TerminalUrl'] as String?,
      transactionId: json['TransactionId'] as int?,
      amount: json['Amount'] as int?,
      currency: json['Currency'] as String?,
      currencyCode: json['CurrencyCode'] as int?,
      paymentAmount: json['PaymentAmount'] as int?,
      paymentCurrency: json['PaymentCurrency'] as String?,
      paymentCurrencyCode: json['PaymentCurrencyCode'] as int?,
      invoiceId: json['InvoiceId'] as String?,
      accountId: json['AccountId'] as String?,
      email: json['Email'] as String?,
      description: json['Description'] as String?,
      createdDate: json['CreatedDate'] as String?,
      createdDateIso: json['CreatedDateIso'] as String?,
      testMode: json['TestMode'] as bool?,
      ipAddress: json['IpAddress'] as String?,
      ipCountry: json['IpCountry'] as String?,
      ipCity: json['IpCity'] as String?,
      ipRegion: json['IpRegion'] as String?,
      ipDistrict: json['IpDistrict'] as String?,
      ipLatitude: (json['IpLatitude'] as num?)?.toDouble(),
      ipLongitude: (json['IpLongitude'] as num?)?.toDouble(),
      cardFirstSix: json['CardFirstSix'] as String?,
      cardLastFour: json['CardLastFour'] as String?,
      cardExpDate: json['CardExpDate'] as String?,
      cardType: json['CardType'] as String?,
      issuerBankCountry: json['IssuerBankCountry'] as String?,
      issuer: json['Issuer'] as String?,
      cardTypeCode: json['CardTypeCode'] as int?,
      status: json['Status'] as String?,
      statusCode: json['StatusCode'] as int?,
      cultureName: json['CultureName'] as String?,
      reason: json['Reason'] as String?,
      cardHolderMessage: json['CardHolderMessage'] as String?,
      type: json['Type'] as int?,
      refunded: json['Refunded'] as bool?,
      name: json['Name'] as String?,
      token: json['Token'] as String?,
      gatewayName: json['GatewayName'] as String?,
      applePay: json['ApplePay'] as bool?,
      androidPay: json['AndroidPay'] as bool?,
      walletType: json['WalletType'] as String?,
      totalFee: json['TotalFee'] as int?,
      paReq: json['PaReq'] as String?,
      acsUrl: json['AcsUrl'] as String?,
    );

Map<String, dynamic> _$TransactionModelToJson(TransactionModel instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('ReasonCode', instance.reasonCode);
  writeNotNull('PublicId', instance.publicId);
  writeNotNull('TerminalUrl', instance.terminalUrl);
  writeNotNull('TransactionId', instance.transactionId);
  writeNotNull('Amount', instance.amount);
  writeNotNull('Currency', instance.currency);
  writeNotNull('CurrencyCode', instance.currencyCode);
  writeNotNull('PaymentAmount', instance.paymentAmount);
  writeNotNull('PaymentCurrency', instance.paymentCurrency);
  writeNotNull('PaymentCurrencyCode', instance.paymentCurrencyCode);
  writeNotNull('InvoiceId', instance.invoiceId);
  writeNotNull('AccountId', instance.accountId);
  writeNotNull('Email', instance.email);
  writeNotNull('Description', instance.description);
  writeNotNull('CreatedDate', instance.createdDate);
  writeNotNull('CreatedDateIso', instance.createdDateIso);
  writeNotNull('TestMode', instance.testMode);
  writeNotNull('IpAddress', instance.ipAddress);
  writeNotNull('IpCountry', instance.ipCountry);
  writeNotNull('IpCity', instance.ipCity);
  writeNotNull('IpRegion', instance.ipRegion);
  writeNotNull('IpDistrict', instance.ipDistrict);
  writeNotNull('IpLatitude', instance.ipLatitude);
  writeNotNull('IpLongitude', instance.ipLongitude);
  writeNotNull('CardFirstSix', instance.cardFirstSix);
  writeNotNull('CardLastFour', instance.cardLastFour);
  writeNotNull('CardExpDate', instance.cardExpDate);
  writeNotNull('CardType', instance.cardType);
  writeNotNull('IssuerBankCountry', instance.issuerBankCountry);
  writeNotNull('Issuer', instance.issuer);
  writeNotNull('CardTypeCode', instance.cardTypeCode);
  writeNotNull('Status', instance.status);
  writeNotNull('StatusCode', instance.statusCode);
  writeNotNull('CultureName', instance.cultureName);
  writeNotNull('Reason', instance.reason);
  writeNotNull('CardHolderMessage', instance.cardHolderMessage);
  writeNotNull('Type', instance.type);
  writeNotNull('Refunded', instance.refunded);
  writeNotNull('Name', instance.name);
  writeNotNull('Token', instance.token);
  writeNotNull('GatewayName', instance.gatewayName);
  writeNotNull('ApplePay', instance.applePay);
  writeNotNull('AndroidPay', instance.androidPay);
  writeNotNull('WalletType', instance.walletType);
  writeNotNull('TotalFee', instance.totalFee);
  writeNotNull('PaReq', instance.paReq);
  writeNotNull('AcsUrl', instance.acsUrl);
  return val;
}
