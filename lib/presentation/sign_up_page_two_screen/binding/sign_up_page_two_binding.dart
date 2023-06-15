import '../controller/sign_up_page_two_controller.dart';
import 'package:get/get.dart';

class SignUpPageTwoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SignUpPageTwoController());
  }
}
