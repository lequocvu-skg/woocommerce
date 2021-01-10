// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'woo_base.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WooBaseResponse _$WooBaseResponseFromJson(Map<String, dynamic> json) {
  return WooBaseResponse(
    code: json['code'] as String,
    message: json['message'] as String,
    data: json['data'],
  );
}

Map<String, dynamic> _$WooBaseResponseToJson(WooBaseResponse instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'data': instance.data,
    };
