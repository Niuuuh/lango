import 'package:freezed_annotation/freezed_annotation.dart';

part 'message_type.g.dart';

@JsonEnum(alwaysCreate: true, fieldRename: FieldRename.snake)
enum MessageType {
  action,
  inCharacter,
  outOfCharacter;

  String toJson() => _$MessageTypeEnumMap[this]!;

  @override
  String toString() => toJson();
}
