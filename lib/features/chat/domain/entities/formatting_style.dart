import 'package:freezed_annotation/freezed_annotation.dart';

@JsonEnum(fieldRename: FieldRename.snake)
enum FormattingStyle {
  bold, italic, underline, strike,
}
