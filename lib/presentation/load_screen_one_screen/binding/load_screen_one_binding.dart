import '../controller/load_screen_one_controller.dart';
import 'package:get/get.dart';

class LoadScreenOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LoadScreenOneController());
  }
}
