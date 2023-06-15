import 'package:google_mlkit_translation/google_mlkit_translation.dart';
import 'package:google_mlkit_language_id/google_mlkit_language_id.dart';

class TranslationApi {
  static Future<String?> translateText(String recognizedText) async {
    try {
      final langidentifier = LanguageIdentifier(confidenceThreshold: 0.5);
      final languageCode =
          await langidentifier.identifyLanguage(recognizedText);
      langidentifier.close();
      final translator = OnDeviceTranslator(
        sourceLanguage: TranslateLanguage.values
            .firstWhere((element) => element.bcpCode == languageCode),
        targetLanguage: TranslateLanguage.english,
      );
      final translatedText = await translator.translateText(recognizedText);
      translator.close();
      return translatedText;
    } catch (e) {
      return null;
    }
  }
}
