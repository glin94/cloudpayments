// class Transaction {
//   final String transactionId;
//   final int reasonCode;
//   final String cardHolderMessage;
//   final String paReq;
//   final String acsUrl;

//   Transaction.fromJson(Map<String, dynamic> json)
//       : transactionId = json['TransactionId'].toString(),
//         reasonCode = json['ReasonCode'],
//         cardHolderMessage = json['CardHolderMessage'],
//         paReq = json['PaReq'],
//         acsUrl = json['AcsUrl'];

//   @override
//   String toString() {
//     return 'Transaction{transactionId: $transactionId, reasonCode: $reasonCode, cardHolderMessage: $cardHolderMessage, paReq: $paReq, ascUrl: $acsUrl}';
//   }
// }

import 'package:cloudpayments/cloudpayments.dart';
import 'package:json_annotation/json_annotation.dart';

part 'transaction.g.dart';

@JsonSerializable(
  fieldRename: FieldRename.pascal,
  explicitToJson: true,
  includeIfNull: false,
)
class Transaction {
  const Transaction({
    required this.success,
    this.model,
    this.message,
  });

  final TransactionModel? model;
  final bool success;
  final String? message;

  factory Transaction.fromJson(Map<String, dynamic> json) =>
      _$TransactionFromJson(json);

  Map<String, dynamic> toJson() => _$TransactionToJson(this);
}
