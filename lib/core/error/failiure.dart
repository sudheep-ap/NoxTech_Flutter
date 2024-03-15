// ignore_for_file: must_be_immutable

import 'dart:convert';

FailureModel failureModelFromJson(String str) =>
    FailureModel.fromJson(json.decode(str));

String failureModelToJson(FailureModel data) => json.encode(data.toJson());

class FailureModel {
  int status;
  String message;
  FailureData data;

  FailureModel({
    required this.status,
    required this.message,
    required this.data,
  });

  factory FailureModel.fromJson(Map<String, dynamic> json) => FailureModel(
        status: json["status"],
        message: json["message"],
        data: FailureData.fromJson(json["data"]),
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "message": message,
        "data": data.toJson(),
      };
}

class FailureData {
  String message;

  FailureData({
    required this.message,
  });

  factory FailureData.fromJson(Map<String, dynamic> json) => FailureData(
        message: json["message"],
      );

  Map<String, dynamic> toJson() => {
        "message": message,
      };
}















// abstract class Failure extends Equatable {
//   @override
//   List<Object> get props => [];
// }

// // General failures
// class ServerFailure extends Failure {
//   String? message;

//   ServerFailure({this.message});
// }

// // class ApiFailure extends Failure {
// //   ApiFailure({this.message});
// //   String? message;

// //   // ApiFailure({this.message});
// // }

// class CacheFailure extends Failure {}
