import '../../../chat/data/models/chat_api_format.dart';
import '../../../chat/data/models/json_schema.dart';

abstract class SummaryJsonSchemes {
  static final sessionSummary = ChatApiFormatJsonSchema(
    name: "session_summary",
    strict: true,
    schema: JsonSchema(
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
    ).toJson(),
  );
}
