import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lango/core/utils/string_utils.dart';

part 'message_type.g.dart';

@JsonEnum(alwaysCreate: true, fieldRename: FieldRename.snake)
enum MessageType {
  action,
  inCharacter,
  outOfCharacter;

  @override
  String toString() => name.toSnakeCase();
}
