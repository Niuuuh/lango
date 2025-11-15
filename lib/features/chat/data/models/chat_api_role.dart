import 'package:freezed_annotation/freezed_annotation.dart';

@JsonEnum(fieldRename: FieldRename.snake)
enum ChatApiRole {
  user,
  assistant,
  system,
  developer;
}
