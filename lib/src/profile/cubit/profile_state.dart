part of 'profile_cubit.dart';

@freezed
abstract class ProfileState with _$ProfileState {
 const factory ProfileState.initial() = ProfileInitialState;

  const factory ProfileState.loading() = ProfileLoadingState;

  const factory ProfileState.loadSuccess({ @required Profile profile}) =
      ProfileLoadingSuccessState;

  const factory ProfileState.error({@required String message}) =
      ProfileErrorState;
}
