import 'package:bloc/bloc.dart';
import 'package:flutter_tech_camp/common/exceptions.dart';
import 'package:flutter_tech_camp/src/profile/models/profile.dart';
import 'package:flutter_tech_camp/src/profile/repository/profile_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_state.dart';
part 'profile_cubit.freezed.dart';

class ProfileCubit extends Cubit<ProfileState> {
  final ProfileRepository _profileRepository;

  ProfileCubit(this._profileRepository) : super(ProfileState.initial());

  Future<void> getUserProfile() async {
    try {
      emit(ProfileLoadingState());
      final Profile profile = await _profileRepository.getUserProfile() ;
      emit(ProfileLoadingSuccessState(profile: profile));
    } on NetworkError catch (e) {
      emit(ProfileErrorState(message: e.message));
    } on AppError catch (e) {
      emit(ProfileErrorState(message: e.message));
    }
  }
}
