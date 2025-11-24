import '../../../core/domain/entities/character_animation.dart';
import '../data/models/chat_api_format.dart';
import 'entities/chat_stage.dart';
import 'entities/message_type.dart';

abstract class ChatJsonSchemes {
  static final roleplayReply = ChatApiFormatJsonSchema(
    name: "roleplay_reply",
    description: "Assistant reply for the language learning roleplay",
    strict: true,
    schema: {
      "type": "object",
      "properties": {
        "stage": {
          "type": "string",
          "enum": [...ChatStage.values.map((e) => e.toJson())],
        },
        "messages": {
          "type": "array",
          "items": {
            "type": "object",
            "properties": {
              "type": {
                "type": "string",
                "enum": [...MessageType.values.map((e) => e.toJson())],
              },
              "animation": {
                "type": ["string", "null"],
                "enum": [...CharacterAnimation.values.map((e) => e.toJson())],
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
            "required": ["type", "animation", "segments"],
            "additionalProperties": false,
          },
        },
      },
      "required": ["stage", "messages"],
      "additionalProperties": false,
    },
  );
}
