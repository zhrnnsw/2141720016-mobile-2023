import 'package:eduscan/core/app_export.dart';
import 'package:eduscan/widgets/custom_elevated_button.dart';
import 'package:eduscan/widgets/custom_outlined_button.dart';
import 'package:eduscan/widgets/custom_text_form_field.dart';
import 'package:eduscan/widgets/custom_floating_text_field.dart';
import 'package:flutter/material.dart';

class SignInScreen extends StatelessWidget {
  SignInScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Form(
          key: _formKey,
          child: Container(
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(
              horizontal: 16.h,
              vertical: 36.v,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Masuk ke akun Anda",
                  style: theme.textTheme.headlineSmall,
                ),
                SizedBox(height: 55.v),
                /*SizedBox(
                  height: 64.v,
                  width: 328.h,
                  child: Stack(
                    alignment: Alignment.topLeft,
                    children: [
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          height: 56.v,
                          width: 328.h,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(
                              4.h,
                            ),
                            border: Border.all(
                              color: theme.colorScheme.secondaryContainer,
                              width: 1.h,
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Container(
                          margin: EdgeInsets.only(left: 12.h),
                          padding: EdgeInsets.symmetric(
                            horizontal: 4.h,
                            vertical: 1.v,
                          ),
                          decoration: AppDecoration.fillWhiteA70001,
                          child: Text(
                            "Email",
                            style: theme.textTheme.labelLarge,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),*/
                CustomFloatingTextField(
                  controller: emailController,
                  labelText: "Email",
                  labelStyle: CustomTextStyles.titleMediumSecondaryContainer,
                  hintText: "Masukkan Email",
                  textInputType: TextInputType.visiblePassword,
                  obscureText: true,
                  contentPadding:
                              EdgeInsets.fromLTRB(12.h, 18.v, 16.h, 17.v)
                ),
                SizedBox(height: 26.v),
                CustomFloatingTextField(
                  controller: passwordController,
                  labelText: "Password",
                  labelStyle: CustomTextStyles.titleMediumSecondaryContainer,
                  hintText: "Masukkan Password",
                  textInputType: TextInputType.visiblePassword,
                  obscureText: true,
                  contentPadding:
                              EdgeInsets.fromLTRB(12.h, 18.v, 16.h, 17.v)
                ),
                SizedBox(height: 60.v),
                GestureDetector(
                    onTap: () {
                      onTapButtonDaftar(CustomOutlinedButton(text: "Daftar") as BuildContext);
                    },
                ),
                CustomElevatedButton(
                  text: "Masuk",
                ),
                SizedBox(height: 17.v),
                Text(
                  "Atau",
                  style: theme.textTheme.bodyMedium,
                ),
                SizedBox(height: 18.v),
                GestureDetector(
                    child: CustomOutlinedButton(text: "Daftar"),
                    onTap: () {
                      onTapButtonDaftar(context);
                    },
                ),
                Spacer(),
                Text(
                  "EduScan",
                  style: CustomTextStyles.titleSmallPrimary,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
  onTapButtonDaftar(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.signUpScreen);
  }
}
