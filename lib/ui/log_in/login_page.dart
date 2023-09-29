import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sample_project/shared/themes/app_theme.dart';
import 'package:sample_project/ui/controllers/auth_controller.dart';
import 'package:sample_project/ui/widget/login_button.dart';

class LoginPage extends StatelessWidget {
  LoginPage({Key? key}) : super(key: key);

  final TextEditingController _emailController = TextEditingController();

  final AuthController controller = Get.find();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          backgroundColor: Colors.white,
          body: CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: Container(
                  margin: EdgeInsets.symmetric(
                      horizontal: MediaQuery.of(context).size.width * 0.07,
                      vertical: MediaQuery.of(context).size.height * 0.1),
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "Log in",
                          style: AppTheme.mainHeader(),
                        ),
                      ),
                      SizedBox(
                          height: MediaQuery.of(context).size.height * 0.07),
                      Form(
                        key: _formKey,
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        child: TextFormField(
                            decoration: InputDecoration(
                                enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    width: 1,
                                  ),
                                ),
                                hintText: "E-mail",
                                hintStyle: AppTheme.hintText(),
                                suffixIcon: IconButton(
                                  onPressed: () {
                                    _emailController.clear();
                                  },
                                  icon: Icon(Icons.close),
                                  iconSize: 15,
                                )),
                            style: TextStyle(fontWeight: FontWeight.bold),
                            controller: _emailController,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return "Please enter your e-mail";
                              }
                              if (!RegExp(
                                      r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                                  .hasMatch(value)) {
                                return "Invalid E-mail";
                              }
                            },
                            onChanged: (val) {
                              controller.isEmailValid(val);
                            }),
                      ),
                      const SizedBox(height: 18),
                    ],
                  ),
                ),
              ),
              LoginButton(
                text: "Enter your e-mail address",
                onPressed: () {},
              )
            ],
          ),
        ),
      ],
    );
  }
}
