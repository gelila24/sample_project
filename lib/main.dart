import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sample_project/shared/routes/app_pages.dart';
import 'package:sample_project/shared/routes/app_routes.dart';
import 'package:sample_project/ui/bindings/auth_binding.dart';
import 'package:sample_project/ui/log_in/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      // routing/navigation with GetX. More could be implemented if there are multiple pages.
      initialRoute: AppRoutes.LOGIN,
      getPages: AppPages.pages,

      // binding is implemented with GetX again, but since the page to bind the class and
      // the class it self are just one, the bindings are not listed here instead at the GetPage pages declaration.
    );
  }
}
