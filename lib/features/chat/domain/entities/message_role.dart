import 'package:freezed_annotation/freezed_annotation.dart';

part 'message_role.g.dart';

@JsonEnum(alwaysCreate: true, fieldRename: FieldRename.snake)
enum MessageRole {
  user,
  assistant,
}
