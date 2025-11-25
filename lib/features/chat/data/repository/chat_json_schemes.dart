import '../../../../core/domain/entities/character_animation.dart';
import '../../domain/entities/chat_stage.dart';
import '../../domain/entities/message_type.dart';
import '../models/chat_api_format.dart';
import '../models/json_schema.dart';

abstract class ChatJsonSchemes {
  static final chatReply = ChatApiFormatJsonSchema(
    name: "chat_reply",
    description: "Assistant reply for the language learning roleplay",
    strict: true,
    schema: JsonSchema(
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
    ).toJson(),
  );
}
