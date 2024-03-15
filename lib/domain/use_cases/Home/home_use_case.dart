import 'package:dartz/dartz.dart';
import '../../../core/api_status.dart';
import '../../models/Home/home_model.dart';

abstract class HomeUseCase {
  Future<Either<ApiFailure, HomeModel>> execute();
}
