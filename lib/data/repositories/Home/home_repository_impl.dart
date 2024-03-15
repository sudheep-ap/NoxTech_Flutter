// ignore_for_file: must_be_immutable

import 'package:dartz/dartz.dart';
import '../../../core/api_status.dart';
import '../../../domain/data_sources/Home/home_data_source.dart';
import '../../../domain/models/Home/home_model.dart';
import '../../../domain/repositories/Home/home_repository.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: HomeRepository)
class HomeRepositoryImpl extends HomeRepository {
  final HomeDataSource homeDataSource;

  HomeRepositoryImpl({required this.homeDataSource});

  @override
  Future<Either<ApiFailure, HomeModel>> getHomeData() async {
    final result = await homeDataSource.getHomeData();
    return result.fold(
      (left) {
        return Left(ApiFailure(message: left.message));
      },
      (right) {
        if (right.message == 'OK') {
          return Right(right);
        } else {
          return Left(ApiFailure(message: right.message));
        }
      },
    );
  }
}
