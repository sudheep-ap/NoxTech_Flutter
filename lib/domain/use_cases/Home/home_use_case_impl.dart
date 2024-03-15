import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:noxtech_flutter/domain/use_cases/Home/home_use_case.dart';
import '../../../core/api_status.dart';
import '../../models/Home/home_model.dart';
import '../../repositories/Home/home_repository.dart';

@LazySingleton(as: HomeUseCase)
class HomeUseCaseImpl extends HomeUseCase {
  final HomeRepository homeRepository;

  HomeUseCaseImpl(this.homeRepository);

  @override
  Future<Either<ApiFailure, HomeModel>> execute() {
    return homeRepository.getHomeData();
  }
}
