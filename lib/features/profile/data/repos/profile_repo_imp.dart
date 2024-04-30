import 'package:you_app/core/network/api_services.dart';
import 'package:you_app/core/utils/constant/app_api.dart';
import 'package:you_app/features/profile/data/models/profile_model.dart';
import 'package:you_app/features/profile/data/repos/profile_repo.dart';

class ProfileRepoImp extends ProfileRepo {
  ApiServices apiServices = ApiServices();

  @override
  Future getProfile() async {
    try {
      final response = await apiServices.get(url: AppApi.getProfile);
      return response.fold((failure) => failure, (succuss) {
        final data = ProfileModel.fromJson(succuss);
        return data;
      });
    } catch (e) {
      return 'Something went wrong';
    }
  }

  @override
  Future postProfile(final Map<String, dynamic> data) async {
    try {
      final response = await apiServices.post(
        url: AppApi.createProfile,
        data: data,
      );
      return response.fold((failure) => failure, (succuss) {
        final data = ProfileModel.fromJson(succuss);
        return data;
      });
    } catch (e) {
      return 'Something went wrong';
    }
  }

  @override
  Future putProfile(final Map<String, dynamic> data) async {
    try {
      final response = await apiServices.post(
        url: AppApi.getProfile,
        data: data,
      );
      return response.fold((failure) => failure, (succuss) {
        final data = ProfileModel.fromJson(succuss);
        return data;
      });
    } catch (e) {
      return 'Something went wrong';
    }
  }
}
