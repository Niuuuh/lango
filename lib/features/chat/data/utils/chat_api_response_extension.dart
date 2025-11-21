import 'dart:convert';

import 'package:collection/collection.dart';

import '../models/chat_api_content.dart';
import '../models/chat_api_output.dart';
import '../models/chat_api_response.dart';
import '../models/chat_api_status.dart';

extension ChatApiResponseExtension on ChatApiResponse {
  dynamic get parsedOutput {
    final text = outputText;
    if (text != null) {
      return jsonDecode(text);
    }
    return null;
  }

  String? get outputText {
    final message = output?.whereType<ChatApiOutputMessage>().firstWhereOrNull(
      (output) => output.status == ChatApiStatus.completed,
    );
    if (message != null) {
      final content = message.content.whereType<ChatApiOutputText>().firstOrNull;
      return content?.text;
    }
    return null;
  }
}
