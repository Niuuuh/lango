import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat_api_role.g.dart';

@JsonEnum(alwaysCreate: true, fieldRename: FieldRename.snake)
enum ChatApiRole {
  system,
  developer,
  user,
  assistant,
}
