import 'package:bloc/bloc.dart';

import '../../../features/language/domain/entities/language.dart';
import '../../data/repository/user_repository.dart';
import '../../domain/entities/user.dart';
import 'user_state.dart';

class UserCubit extends Cubit<UserState> {
  final UserRepository userRepository;

  UserCubit({required this.userRepository}) : super(const UserState.initial());

  Future<void> load() async {
    try {
      emit(const UserState.loading());
      final user = await userRepository.getUser();
      if (user == null) {
        emit(const UserState.failure("No user found"));
        return;
      }
      emit(UserState.success(user));
    } catch (e) {
      emit(UserState.failure(e.toString()));
    }
  }

  Future<User> create(String name) async {
    final user = User(name: name);
    await update(user);
    return user;
  }

  Future<void> update(User user) async {
    try {
      emit(const UserState.loading());
      await userRepository.updateUser(user);
      emit(UserState.success(user));
    } catch (e) {
      emit(UserState.failure(e.toString()));
    }
  }

  Future<void> updateLanguage(Language language) async {
    await state.whenOrNull(
      success: (user) async {
        await update(user.copyWith(targetLanguage: language));
      },
    );
  }
}
