import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat_api_model.g.dart';

@JsonEnum(alwaysCreate: true, valueField: "value")
enum ChatApiModel {
  gpt4oMini('gpt-4o-mini'),
  gpt4o('gpt-4o');

  const ChatApiModel(this.value);

  final String value;
}
