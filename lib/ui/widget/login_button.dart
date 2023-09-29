import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sample_project/shared/themes/app_theme.dart';
import 'package:sample_project/ui/controllers/auth_controller.dart';

class LoginButton extends StatelessWidget {
  final String text;
  final Function() onPressed;
  final EdgeInsetsGeometry buttonPadding;

  LoginButton({
    Key? key,
    required this.text,
    required this.onPressed,
    this.buttonPadding = const EdgeInsets.only(
      left: 15,
      right: 15,
      bottom: 30,
    ),
  }) : super(key: key);
  final AuthController controller = Get.find();
  @override
  Widget build(BuildContext context) {
    return SliverFillRemaining(
      hasScrollBody: false,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          IntrinsicHeight(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "Find e-mail",
                    softWrap: false,
                    style: AppTheme.title(),
                    overflow: TextOverflow.visible,
                  ),
                ),
                VerticalDivider(
                  thickness: 1,
                  width: 15,
                  indent: 15,
                  endIndent: 15,
                  color: AppTheme.secondaryColor,
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "Find password",
                    softWrap: false,
                    style: AppTheme.title(),
                    overflow: TextOverflow.visible,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: buttonPadding,
            child: Obx(
              () => ElevatedButton(
                child: Text(
                  text,
                  style: TextStyle(fontWeight: FontWeight.w700),
                ),
                onPressed: onPressed,
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(double.infinity, 40),
                  maximumSize: Size(double.infinity, 80),
                  backgroundColor: controller.isValid
                      ? AppTheme.primaryColor
                      : AppTheme.secondaryColor,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
