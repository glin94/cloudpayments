class PayRequest {
  PayRequest({
    required this.amount,
    required this.cardCryptogramPacket,
    required this.currency,
    required this.ipAddress,
    required this.name,
    this.invoiceId,
    this.description,
    this.accountId,
  });

  final num amount;
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
    map['CardCryptogramPacket'] = cardCryptogramPacket;
    map['IpAddress'] = ipAddress;
    map['Name'] = name;

    if (invoiceId != null) map['InvoiceId'] = invoiceId;
    if (description != null) map['Description'] = description;
    return map;
  }
}
