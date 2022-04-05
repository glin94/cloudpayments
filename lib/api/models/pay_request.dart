class PayRequest {
  PayRequest({
    required this.amount,
    required this.cardCryptogramPacket,
    this.currency,
    this.name,
    this.invoiceId,
    this.description,
    this.accountId,
    this.ipAddress,
  });

  final String amount;
  final String? currency;
  final String? name;
  final String cardCryptogramPacket;
  final String? invoiceId;
  final String? description;
  final String? accountId;
  final String? ipAddress;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['Amount'] = amount;
    map['Currency'] = currency;
    map['Name'] = name;
    map['CardCryptogramPacket'] = cardCryptogramPacket;
    map['InvoiceId'] = invoiceId;
    map['Description'] = description;
    map['IpAddress'] = ipAddress;
    return map;
  }
}
