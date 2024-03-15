import 'package:dartz/dartz.dart';
import 'package:noxtech_flutter/domain/models/Home/home_model.dart';
import '../../../core/api_status.dart';

abstract class HomeDataSource {
  Future<Either<ApiFailure, HomeModel>> getHomeData();
}
