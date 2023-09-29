import 'package:get/get.dart';
import 'package:sample_project/shared/routes/app_routes.dart';
import 'package:sample_project/ui/bindings/auth_binding.dart';
import 'package:sample_project/ui/log_in/login_page.dart';

abstract class AppPages {
  static List<GetPage> pages = [
    GetPage(
        name: AppRoutes.LOGIN, page: () => LoginPage(), binding: AuthBinding())
  ];
}
