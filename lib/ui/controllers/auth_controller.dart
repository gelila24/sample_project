import 'package:get/get.dart';
import 'package:get/get_navigation/src/routes/default_transitions.dart';

class AuthController extends GetxController {
  // No necessary services to inject, as suggested on the assessment
  // If there were any, we would have injected it as follows
  // AuthController({required this.authRepository, required this.fireBaseService})

  // telegram meslogn enter alkut am laughing here fr fr me too koy demo
  final _isValid = false.obs;
  bool get isValid => _isValid.value;
  set isValid(bool value) => _isValid.value = value;

  isEmailValid(String? val) {
    isValid = (val != null &&
        val.isNotEmpty &&
        RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
            .hasMatch(val));
  }
}
