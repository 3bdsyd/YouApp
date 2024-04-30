abstract class ProfileRepo {
  Future getProfile();
  Future postProfile(final Map<String, dynamic> data);
  Future putProfile(final Map<String, dynamic> data);

}
