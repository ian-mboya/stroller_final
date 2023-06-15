import '../controller/camera_window_controller.dart';
import 'package:get/get.dart';

class CameraWindowBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CameraWindowController());
  }
}
