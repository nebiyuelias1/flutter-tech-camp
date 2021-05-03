import 'package:dio/dio.dart';
import 'package:flutter_tech_camp/common/exceptions.dart';
import 'package:flutter_tech_camp/src/profile/models/profile.dart';

abstract class ProfileRepository {
  Future<Profile> getUserProfile(); //Single User
}

class ProfileRepositoryImpl implements ProfileRepository {
  final Dio _dio;

  ProfileRepositoryImpl(this._dio) : assert(_dio != null);

  @override
  Future<Profile> getUserProfile() async {
    try {
      Response response = await _dio.get('users/2');
      Profile result = Profile.fromJson(response.data);
      return result;
    } on DioError {
      throw NetworkError('Network error');
    } catch (_) {
      throw AppError('Something went wrong');
    }
  }
}