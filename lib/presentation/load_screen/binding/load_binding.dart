import '../controller/load_controller.dart';
import 'package:get/get.dart';

class LoadBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LoadController());
  }
}
