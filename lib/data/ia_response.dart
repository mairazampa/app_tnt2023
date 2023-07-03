import 'dart:convert';

IaResponse iaResponseFromJson(String str) =>
    IaResponse.fromJson(json.decode(str));

String iaResponseToJson(IaResponse data) => json.encode(data.toJson());

class IaResponse {
  String mensaje;
  bool error;

  IaResponse({
    required this.mensaje,
    required this.error,
  });

  factory IaResponse.fromJson(Map<String, dynamic> json) => IaResponse(
        mensaje: json["mensaje"],
        error: json["error"],
      );

  Map<String, dynamic> toJson() => {
        "mensaje": mensaje,
        "error": error,
      };
<<<<<<< HEAD
}
=======
}
>>>>>>> 56bb76930862e5edc4cf82f1656fd8acd69fa6cc
