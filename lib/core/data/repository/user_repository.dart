import '../../domain/entities/user.dart';
import '../data_sources/preferences_api.dart';

class UserRepository {
  final PreferencesApi preferencesApi;

  UserRepository({required this.preferencesApi});

  Future<User?> getUser() async {
    final json = await preferencesApi.getJson('user');
    if (json == null) return null;
    return User.fromJson(json);
  }

  Future<void> updateUser(User? user) async {
    final json = user?.toJson();
    await preferencesApi.setJson('user', json);
  }
}
