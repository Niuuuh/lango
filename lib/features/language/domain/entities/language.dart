enum Language {
  english('English', '🇬🇧'),
  spanish('Español', '🇪🇸'),
  french('Français', '🇫🇷'),
  german('Deutsch', '🇩🇪'),
  russian('Русский', '🇷🇺'),
  italian('Italiano', '🇮🇹'),
  chinese('中文', '🇨🇳'),
  japanese('日本語', '🇯🇵'),
  portuguese('Português', '🇵🇹'),
  arabic('العربية', '🇸🇦'),
  hindi('हिन्दी', '🇮🇳');

  const Language(this.native, this.emoji);

  final String native;
  final String emoji;
}
