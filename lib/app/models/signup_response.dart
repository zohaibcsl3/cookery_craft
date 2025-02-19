import 'dart:convert';

SignUpResponse signUpResponseFromJson(dynamic json) =>
    SignUpResponse.fromJson(json);

String signUpResponseToJson(SignUpResponse data) => json.encode(data.toJson());

class SignUpResponse {
  int id;
  String token;

  SignUpResponse({
    required this.id,
    required this.token,
  });

  SignUpResponse copyWith({
    int? id,
    String? token,
  }) =>
      SignUpResponse(
        id: id ?? this.id,
        token: token ?? this.token,
      );

  factory SignUpResponse.fromJson(Map<String, dynamic> json) => SignUpResponse(
        id: json["id"],
        token: json["token"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "token": token,
      };
}
