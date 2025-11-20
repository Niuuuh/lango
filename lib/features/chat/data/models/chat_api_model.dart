import 'package:freezed_annotation/freezed_annotation.dart';

@JsonEnum(valueField: "value")
enum ChatApiModel {
  gpt4oMini('gpt-4o-mini'),
  gpt4o('gpt-4o');

  const ChatApiModel(this.value);

  final String value;
}
