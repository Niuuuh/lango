import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:lango/features/chat/data/data_sources/chat_api_constants.dart';
import 'package:lango/features/chat/data/data_sources/mock_chat_api.dart';
import 'package:lango/features/chat/data/models/chat_api_content.dart';
import 'package:lango/features/chat/data/models/chat_api_format.dart';
import 'package:lango/features/chat/data/models/chat_api_input_message.dart';
import 'package:lango/features/chat/data/models/chat_api_input.dart';
import 'package:lango/features/chat/data/models/chat_api_role.dart';
import 'package:lango/features/chat/data/models/chat_api_text.dart';

void main() {
  test('createResponse with MockChatApi', () {
    final mockApi = MockChatApi();
    final payload = ChatApiInput(
      model: ChatApiConstants.model,
      input: [
        ChatApiInputMessage(
          role: ChatApiRole.system,
          content:
              'You are a helpful math tutor. Guide the user through the solution step by step.',
        ),
        ChatApiInputMessage(
          role: ChatApiRole.user,
          content: 'how can I solve 8x + 7 = -23',
        ),
      ],
      text: ChatApiText(
        format: ChatApiFormatJsonSchema(
          name: "math_response",
          schema: {
            "type": "object",
            "properties": {
              "steps": {
                "type": "array",
                "items": {
                  "type": "object",
                  "properties": {
                    "explanation": {"type": "string"},
                    "output": {"type": "string"},
                  },
                  "required": ["explanation", "output"],
                  "additionalProperties": false,
                },
              },
              "final_answer": {"type": "string"},
            },
            "required": ["steps", "final_answer"],
            "additionalProperties": false,
          },
          strict: true,
        ),
      ),
    );

    mockApi.createResponse(payload).then((response) {
      // basic assertions
      expect(
        response.id,
        'resp_009a4de2473fc8390069177c5ee6088190b704a595a61a9ee6',
      );
      expect(response.output, isNotNull);

      final output = response.output!;
      expect(output.first.content, isNotEmpty);
      expect(output.first.content.length, 1);

      final content = output.first.content.first;
      expect(content, isA<ChatApiOutputText>());

      final text = (content as ChatApiOutputText).text;
      // the `text` field contains a JSON string; decode it and assert on the inner value
      final inner = jsonDecode(text) as Map<String, dynamic>;
      expect(inner['final_answer'], 'x = -15/4');
    });
  });
}
