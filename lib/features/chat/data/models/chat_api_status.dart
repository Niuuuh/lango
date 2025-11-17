import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat_api_status.g.dart';

@JsonEnum(alwaysCreate: true, fieldRename: FieldRename.snake)
enum ChatApiStatus {
  completed,
  failed,
  inProgress,
  cancelled,
  queued,
  incomplete,
}
