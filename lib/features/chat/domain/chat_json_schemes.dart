import 'package:lango/features/chat/data/models/chat_api_format.dart';

import 'entities/message_type.dart';

abstract class ChatJsonSchemes {
  static final roleplayReply = ChatApiFormatJsonSchema(
    name: "roleplay_reply",
    description: "Assistant reply for the language learning roleplay",
    strict: true,
    schema: {
      "type": "object",
      "properties": {
        "messages": {
          "type": "array",
          "items": {
            "type": "object",
            "properties": {
              "type": {
                "type": "string",
                "enum": [...MessageType.values.map((e) => "$e")],
              },
              "segments": {
                "type": "array",
                "items": {
                  "type": "object",
                  "properties": {
                    "text": {
                      "type": "string",
                    },
                    "translation": {
                      "type": ["string", "null"],
                    },
                  },
                  "required": ["text", "translation"],
                  "additionalProperties": false,
                },
              },
            },
            "required": ["type", "segments"],
            "additionalProperties": false,
          },
        },
      },
      "required": ["messages"],
      "additionalProperties": false,
    },
  );
}
