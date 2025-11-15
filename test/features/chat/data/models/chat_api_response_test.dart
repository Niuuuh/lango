import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';

import 'package:lango/features/chat/data/models/chat_api_response.dart';
import 'package:lango/features/chat/data/models/chat_api_content.dart';

void main() {
  test('decode and encode ChatApiResponse', () {
    final decoded = jsonDecode(exampleResponse) as Map<String, dynamic>;

    final response = ChatApiResponse.fromJson(decoded);

    // basic assertions
    expect(response.id, 'resp_009a4de2473fc8390069177c5ee6088190b704a595a61a9ee6');
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

    final json = response.toJson();
    expect(json['id'], response.id);
    final encoded = jsonEncode(json);
    expect(encoded, isA<String>());
  });
}

const exampleResponse = r"""
{
    "id": "resp_009a4de2473fc8390069177c5ee6088190b704a595a61a9ee6",
    "object": "response",
    "created_at": 1763146847,
    "status": "completed",
    "background": false,
    "billing": {
        "payer": "developer"
    },
    "error": null,
    "incomplete_details": null,
    "instructions": null,
    "max_output_tokens": null,
    "max_tool_calls": null,
    "model": "gpt-4o-2024-08-06",
    "output": [
        {
            "id": "msg_009a4de2473fc8390069177c62078481908ba61131eb7e283d",
            "type": "message",
            "status": "completed",
            "content": [
                {
                    "type": "output_text",
                    "annotations": [],
                    "logprobs": [],
                    "text": "{\"steps\":[{\"explanation\":\"Start by isolating the term with the variable. Subtract 7 from both sides.\",\"output\":\"8x + 7 - 7 = -23 - 7\"},{\"explanation\":\"Simplify both sides of the equation.\",\"output\":\"8x = -30\"},{\"explanation\":\"Divide both sides by 8 to solve for x.\",\"output\":\"x = -30 / 8\"},{\"explanation\":\"Simplify the fraction by dividing both the numerator and the denominator by their greatest common divisor, which is 2.\",\"output\":\"x = -15 / 4\"}],\"final_answer\":\"x = -15/4\"}"
                }
            ],
            "role": "assistant"
        }
    ],
    "parallel_tool_calls": true,
    "previous_response_id": null,
    "prompt_cache_key": null,
    "prompt_cache_retention": null,
    "reasoning": {
        "effort": null,
        "summary": null
    },
    "safety_identifier": null,
    "service_tier": "default",
    "store": true,
    "temperature": 1.0,
    "text": {
        "format": {
            "type": "json_schema",
            "description": null,
            "name": "math_response",
            "schema": {
                "type": "object",
                "properties": {
                    "steps": {
                        "type": "array",
                        "items": {
                            "type": "object",
                            "properties": {
                                "explanation": {
                                    "type": "string"
                                },
                                "output": {
                                    "type": "string"
                                }
                            },
                            "required": [
                                "explanation",
                                "output"
                            ],
                            "additionalProperties": false
                        }
                    },
                    "final_answer": {
                        "type": "string"
                    }
                },
                "required": [
                    "steps",
                    "final_answer"
                ],
                "additionalProperties": false
            },
            "strict": true
        },
        "verbosity": "medium"
    },
    "tool_choice": "auto",
    "tools": [],
    "top_logprobs": 0,
    "top_p": 1.0,
    "truncation": "disabled",
    "usage": {
        "input_tokens": 95,
        "input_tokens_details": {
            "cached_tokens": 0
        },
        "output_tokens": 133,
        "output_tokens_details": {
            "reasoning_tokens": 0
        },
        "total_tokens": 228
    },
    "user": null,
    "metadata": {}
}
""";