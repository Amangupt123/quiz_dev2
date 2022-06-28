import 'dart:convert';

Wallet walletFromJson(String str) => Wallet.fromJson(json.decode(str));

String walletToJson(Wallet data) => json.encode(data.toJson());

class Wallet {
  Wallet({
    this.message,
    this.data,
    this.errors,
    this.code,
  });

  String? message;
  String? data;
  List<dynamic>? errors;
  int? code;

  factory Wallet.fromJson(Map<String, dynamic> json) => Wallet(
        message: json["message"],
        data: json["data"],
        errors: List<dynamic>.from(json["errors"].map((x) => x)),
        code: json["code"],
      );

  Map<String, dynamic> toJson() => {
        "message": message,
        "data": data,
        "errors": List<dynamic>.from(errors!.map((x) => x)),
        "code": code,
      };
}
