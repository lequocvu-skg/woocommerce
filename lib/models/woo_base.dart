

import 'package:json_annotation/json_annotation.dart';

part 'woo_base.g.dart';

@JsonSerializable()
class WooBaseResponse {
  String code;
  String message;
  dynamic data;
  
  
  WooBaseResponse({this.code, this.message, this.data});

  factory WooBaseResponse.fromJson(Map<String, dynamic> json) =>
      _$WooBaseResponseFromJson(json);
  Map<String, dynamic> toJson() => _$WooBaseResponseToJson(this);
}