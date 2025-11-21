import 'package:flutter_dotenv/flutter_dotenv.dart';

abstract class ChatApiConstants {
  static const baseUrl = "https://api.openai.com/v1";
  static const responsesEndpoint = "/responses";
  static final apiKey = dotenv.env['OPENAI_API_KEY'];
}
