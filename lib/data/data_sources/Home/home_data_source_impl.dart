import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;
import '../../../core/api_status.dart';
import '../../../domain/data_sources/Home/home_data_source.dart';
import '../../../domain/models/Home/home_model.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: HomeDataSource)
class HomeRepositoryImpl implements HomeDataSource {
  final http.Client client;
  HomeRepositoryImpl(this.client);
  @override
  Future<Either<ApiFailure, HomeModel>> getHomeData() async {
    try {
      final response = await client.get(
        Uri.parse(
            'https://dev1-feeder.send2.com/v1/user/countries/?limit=10&page=1'),
      );
      // print(response.statusCode);
      // print(response.body);
      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);
        // print('--------------------');
        // print(data);
        final enquiryModelInstance = HomeModel.fromJson(data);
        return enquiryModelInstance.message ==
                'OK' //demo condition -changes with response data
            ? right(enquiryModelInstance)
            : left(ApiFailure(message: enquiryModelInstance.message));
      } else {
        throw Exception(
            ApiFailureResponse().getApiFailureResponse(response.statusCode));
      }
    } catch (e) {
      return left(ApiFailure(message: e.toString()));
    }
  }
}
