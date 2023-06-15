import '../controller/speech_to_text_controller.dart';
import 'package:get/get.dart';

class SpeechToTextBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SpeechToTextController());
  }
}
