import 'package:stroller/core/app_export.dart';
import 'package:stroller/presentation/camera_window_screen/models/camera_window_model.dart';

class CameraWindowController extends GetxController {
  Rx<CameraWindowModel> cameraWindowModelObj = CameraWindowModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
