import 'package:stroller/core/app_export.dart';

// ignore: unused_import
import 'package:stroller/presentation/speech_to_text_screen/models/speech_to_text_model.dart';

class SpeechToTextController extends GetxController {
  Rx<SpeechToTextModel> speechToTextModelObj = SpeechToTextModel().obs;
}
