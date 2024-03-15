part of 'home_bloc.dart';

@freezed
class HomeEvent with _$HomeEvent {
  factory HomeEvent.onInitialLoadEvent() = OnInitialLoadEvent;

  //factory HomeEvent.onInitialLoadEvent(
  // final String email, final String password) = OnInitialLoadEvent;

  //--passing parameters
  //--Call buldrunner to generate corresponding Event class
}

//flutter pub run build_runner build --delete-conflicting-outputs