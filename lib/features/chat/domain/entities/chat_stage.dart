import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat_stage.g.dart';

@JsonEnum(alwaysCreate: true, fieldRename: FieldRename.snake)
enum ChatStage {
  intro,
  warmup,
  main,
  closing;

  String toJson() => _$ChatStageEnumMap[this]!;

  @override
  String toString() => toJson();
}
