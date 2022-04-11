// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Transaction _$TransactionFromJson(Map<String, dynamic> json) => Transaction(
      success: json['Success'] as bool,
      model: json['Model'] == null
          ? null
          : TransactionModel.fromJson(json['Model'] as Map<String, dynamic>),
      message: json['Message'] as String?,
    );

Map<String, dynamic> _$TransactionToJson(Transaction instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('Model', instance.model?.toJson());
  val['Success'] = instance.success;
  writeNotNull('Message', instance.message);
  return val;
}
