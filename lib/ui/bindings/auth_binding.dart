import 'package:get/get.dart';
import 'package:sample_project/ui/controllers/auth_controller.dart';

class AuthBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AuthController>(() => AuthController());
  }
}
