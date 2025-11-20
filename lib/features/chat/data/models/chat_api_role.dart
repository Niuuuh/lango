import 'package:freezed_annotation/freezed_annotation.dart';

@JsonEnum(fieldRename: FieldRename.snake)
enum ChatApiRole {
  system,
  developer,
  user,
  assistant,
}
