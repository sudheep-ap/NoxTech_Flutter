import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:noxtech_flutter/domain/use_cases/Home/home_use_case.dart';
import '../../../../core/api_status.dart';
import '../../../../domain/models/Home/home_model.dart';
import '../../../../injection.dart';
part 'home_event.dart';
part 'home_state.dart';
part 'home_bloc.freezed.dart';

@lazySingleton
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  late HomeUseCase _homeUseCase;

  HomeBloc(this._homeUseCase) : super(HomeState.initial()) {
    on<OnInitialLoadEvent>(fetchHomeEquiryData);
  }

  FutureOr<void> fetchHomeEquiryData(
      OnInitialLoadEvent event, Emitter<HomeState> emit) async {
    _homeUseCase = getIt<HomeUseCase>();

    emit(state.copyWith(homeEnquiryState: ApiStatus.loading));
    final response = await _homeUseCase.execute();
    response.fold(
      (failure) {
        return emit(state.copyWith(homeEnquiryState: ApiStatus.failure));
      },
      (data) {
        return emit(state.copyWith(
            homeEnquiryModel: data, homeEnquiryState: ApiStatus.success));
      },
    );
  }
}
