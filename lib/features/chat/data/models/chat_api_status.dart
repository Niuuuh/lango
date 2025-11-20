import 'package:freezed_annotation/freezed_annotation.dart';

@JsonEnum(fieldRename: FieldRename.snake)
enum ChatApiStatus {
  completed,
  failed,
  inProgress,
  cancelled,
  queued,
  incomplete,
}
