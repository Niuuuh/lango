import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/utils/string_utils.dart';

@JsonEnum(fieldRename: FieldRename.snake)
enum ChatStage {
  intro,
  warmup,
  main,
  closing;

  @override
  String toString() => name.toSnakeCase();
}
