abstract class ChatApiConstants {
  static const baseUrl = "https://api.openai.com/v1";
  static const responsesEndpoint = "/responses";
  static const apiKey = String.fromEnvironment("CHAT_GPT_API_KEY");
  static const model = "gpt-4o-mini";
}
