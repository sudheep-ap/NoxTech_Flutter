part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  factory HomeState({
    required HomeModel? homeEnquiryModel,
    required ApiStatus homeEnquiryState,
  }) = _HomeState;

  factory HomeState.initial() =>
      HomeState(homeEnquiryModel: null, homeEnquiryState: ApiStatus.initial);
}
