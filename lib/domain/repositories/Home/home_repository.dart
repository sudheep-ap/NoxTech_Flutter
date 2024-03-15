import 'package:dartz/dartz.dart';
import '../../../core/api_status.dart';
import '../../models/Home/home_model.dart';

abstract class HomeRepository {
  Future<Either<ApiFailure, HomeModel>> getHomeData();
}
