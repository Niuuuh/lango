import 'package:bloc/bloc.dart';
import 'package:lango/core/data/repository/user_repository.dart';
import 'package:lango/core/presentation/cubit/user_state.dart';

import '../../../features/language/domain/entities/language.dart';
import '../../domain/entities/user.dart';

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
    final user = User(user: name);
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
    if (state is! UserSuccess) return;
    final user = (state as UserSuccess).user;
    await update(user.copyWith(targetLanguage: language));
  }
}
