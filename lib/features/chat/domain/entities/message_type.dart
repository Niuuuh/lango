import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/utils/string_extension.dart';

@JsonEnum(fieldRename: FieldRename.snake)
enum MessageType {
  action,
  inCharacter,
  outOfCharacter;

  @override
  String toString() => name.toSnakeCase();
}
