import 'package:flutter_test/flutter_test.dart';
import 'package:lango/core/domain/entities/character_animation.dart';
import 'package:lango/features/chat/data/models/json_schema.dart';
import 'package:lango/features/chat/domain/entities/chat_stage.dart';
import 'package:lango/features/chat/domain/entities/message_type.dart';

void main() {
  test('creating json schema for chat reply', () {
    final schema = JsonSchema(
      properties: {
        "stage": EnumProperty(
          values: [...ChatStage.values.map((e) => e.toJson())],
        ),
        "messages": ArrayProperty(
          items: ObjectProperty(
            properties: {
              "type": EnumProperty(
                values: [...MessageType.values.map((e) => e.toJson())],
              ),
              "animation": NullableEnumProperty(
                values: [...CharacterAnimation.values.map((e) => e.toJson())],
              ),
              "segments": ArrayProperty(
                items: ObjectProperty(
                  properties: {
                    "text": StringProperty(),
                    "translation": NullableStringProperty(),
                  },
                ),
              ),
            },
          ),
        ),
      },
    );

    final hardcodedSchema = {
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
    };

    expect(schema.toJson(), hardcodedSchema);
  });
  test("creating json schema for session summary", () {
    final schema = JsonSchema(
      properties: {
        "name": StringProperty(),
        "vibe": StringProperty(),
        "cefr": EnumProperty(
          values: ["A1", "A2", "B1", "B2", "C1", "C2"],
        ),
        "reason": StringProperty(),
        "strengths": ArrayProperty(
          items: StringProperty(),
        ),
        "weaknesses": ArrayProperty(
          items: StringProperty(),
        ),
      },
    );

    final hardcodedSchema = {
      "type": "object",
      "properties": {
        "name": {
          "type": "string",
        },
        "vibe": {
          "type": "string",
        },
        "cefr": {
          "type": "string",
          "enum": ["A1", "A2", "B1", "B2", "C1", "C2"],
        },
        "reason": {
          "type": "string",
        },
        "strengths": {
          "type": "array",
          "items": {
            "type": "string",
          },
        },
        "weaknesses": {
          "type": "array",
          "items": {
            "type": "string",
          },
        },
      },
      "required": [
        "name",
        "vibe",
        "cefr",
        "reason",
        "strengths",
        "weaknesses"
      ],
      "additionalProperties": false,
    };

    expect(schema.toJson(), hardcodedSchema);
  });
}
