import 'package:eduscan/core/app_export.dart';
import 'package:eduscan/widgets/custom_elevated_button.dart';
import 'package:eduscan/widgets/custom_floating_text_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class SignUpScreen extends StatelessWidget {
  SignUpScreen({Key? key}) : super(key: key);

  TextEditingController fullNameController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  TextEditingController passwordController1 = TextEditingController();

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
                    padding:
                        EdgeInsets.symmetric(horizontal: 16.h, vertical: 29.v),
                    child: Column(children: [
                      CustomImageView(
                          imagePath: ImageConstant.imgBluegeometricinitial,
                          height: 95.v,
                          width: 98.h),
                      SizedBox(height: 14.v),
                      Text("Selamat Datang di EduScan!",
                          style: theme.textTheme.headlineSmall),
                      SizedBox(height: 52.v),
                      Text("Buat akun EduScan anda.",
                          style: theme.textTheme.bodyLarge),
                      SizedBox(height: 19.v),
                      CustomFloatingTextField(
                          controller: fullNameController,
                          labelText: "Nama Lengkap",
                          labelStyle:
                              CustomTextStyles.titleMediumSecondaryContainer,
                          hintText: "Masukkan Nama Lengkap",
                          contentPadding:
                              EdgeInsets.fromLTRB(16.h, 18.v, 16.h, 17.v)),
                      SizedBox(height: 17.v),
                      CustomFloatingTextField(
                          controller: emailController,
                          labelText: "Email",
                          labelStyle:
                              CustomTextStyles.titleMediumSecondaryContainer,
                          hintText: "Masukkan Email",
                          contentPadding:
                              EdgeInsets.fromLTRB(12.h, 18.v, 16.h, 17.v)),
                      SizedBox(height: 17.v),
                      CustomFloatingTextField(
                          controller: passwordController,
                          labelText: "Password",
                          labelStyle: CustomTextStyles.titleMediumSecondaryContainer,
                          hintText: "Masukkan Password",
                          textInputType: TextInputType.visiblePassword,
                          obscureText: true,
                          contentPadding:
                              EdgeInsets.fromLTRB(12.h, 18.v, 16.h, 17.v)),
                      SizedBox(height: 17.v),
                      CustomFloatingTextField(
                          controller: passwordController1,
                          labelText: "Ulangi Password",
                          labelStyle: CustomTextStyles.titleMediumSecondaryContainer,
                          hintText: "Masukkan Password Kembali",
                          textInputAction: TextInputAction.done,
                          textInputType: TextInputType.visiblePassword,
                          obscureText: true,
                          contentPadding:
                              EdgeInsets.fromLTRB(12.h, 18.v, 16.h, 17.v)),
                      SizedBox(height: 51.v),
                      CustomElevatedButton(text: "Daftar"),
                      SizedBox(height: 18.v),
                      GestureDetector(
                          onTap: () {
                            onTapTxtMasuk(context);
                          },
                          child: RichText(
                              text: TextSpan(children: [
                                TextSpan(
                                    text: "Sudah memiliki akun? ",
                                    style: theme.textTheme.bodyMedium),
                                TextSpan(
                                    text: "Masuk",
                                    style: theme.textTheme.titleSmall)
                              ]),
                              textAlign: TextAlign.left)),
                      SizedBox(height: 5.v)
                    ])))));
  }

  /// Navigates to the signInScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the signInScreen.
  onTapTxtMasuk(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.signInScreen);
  }
}
