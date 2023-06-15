import '../controller/login_auth_controller.dart';
import 'package:get/get.dart';

class LoginAuthBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LoginAuthController());
  }
}
