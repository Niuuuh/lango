import 'package:dio/dio.dart';
import 'package:lango/features/chat/data/models/chat_api_payload.dart';

import '../models/chat_api_response.dart';
import 'chat_api_constants.dart';

class ChatApi {
  late final Dio _dio;

  ChatApi() {
    _dio = Dio(BaseOptions(
      baseUrl: ChatApiConstants.baseUrl,
      headers: {
        "Content-Type": "application/json",
        "Authorization": ChatApiConstants.apiKey,
      },
    ));
  }

  Future<ChatApiResponse> createResponse(ChatApiPayload payload) async {
    try {
      final response = await _dio.post(
        ChatApiConstants.responsesEndpoint,
        data: payload.toJson(),
      );
      return ChatApiResponse.fromJson(response.data);
    } on DioException catch (e) {
      if (e.response?.data != null) {
        return ChatApiResponse.fromJson(e.response!.data);
      }
      rethrow;
    }
  }
}
