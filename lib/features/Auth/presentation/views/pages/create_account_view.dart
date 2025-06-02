import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:trackmind/core/utils/constants/styles.dart';
import 'package:trackmind/core/utils/resources/app_router.dart';
import 'package:trackmind/core/utils/resources/assets.dart';
import 'package:trackmind/core/utils/resources/color_manager.dart';
import 'package:trackmind/core/widgets/custom_text_field.dart';
import 'package:trackmind/core/widgets/main_button.dart';
import 'package:trackmind/features/Auth/presentation/views/widgets/another_type_auth_widget.dart';
import 'package:trackmind/features/Auth/presentation/views/widgets/checkbox_widget.dart';
import 'package:trackmind/features/Auth/presentation/views/widgets/social_media_sign_in_widget.dart';

class CreateAccountView extends StatefulWidget {
  const CreateAccountView({super.key});

  @override
  State<CreateAccountView> createState() => _CreateAccountViewState();
}

class _CreateAccountViewState extends State<CreateAccountView> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController userNameController = TextEditingController();
  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    userNameController.dispose();
    super.dispose();
  }

  bool keepMeSignedIn = false;
  bool sendMe = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.lightScafold,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    Assets.createAccount,
                    height: 150.h,
                  ),
                  Text(
                    'Create Your Account',
                    style: Styles.textStyle30.copyWith(
                      color: ColorManager.eclipse,
                    ),
                  ),
                  SizedBox(height: 20.h),
                  CustomTextField(
                      fillColor: ColorManager.whiteColor,
                      prefix: Icons.person_2,
                      hint: 'User Name',
                      controller: userNameController,
                      inputType: TextInputType.text),
                  CustomTextField(
                      fillColor: ColorManager.whiteColor,
                      prefix: Icons.email_outlined,
                      hint: 'Email',
                      controller: emailController,
                      inputType: TextInputType.emailAddress),
                  CustomTextField(
                      fillColor: ColorManager.whiteColor,
                      prefix: Icons.lock_outline_rounded,
                      hint: 'Password',
                      obscureText: true,
                      controller: passwordController,
                      inputType: TextInputType.text),
                  CheckboxWidget(
                    value: keepMeSignedIn,
                    onChanged: (value) {
                      setState(() {
                        keepMeSignedIn = value!;
                      });
                    },
                    title: 'Keep me signed in',
                  ),
                  CheckboxWidget(
                    value: sendMe,
                    onChanged: (value) {
                      setState(() {
                        sendMe = value!;
                      });
                    },
                    title: 'Email me about special pricing and more',
                  ),
                  const SizedBox(height: 10),
                  MainButton(
                      onTap: () {
                        context.go(AppRouter.navBarView);
                      },
                      title: 'Create Account'),
                  const SizedBox(height: 10),
                  Text('Or signin with',
                      style: Styles.textStyle12.copyWith(
                        color: ColorManager.eclipse.withOpacity(0.4),
                        fontWeight: FontWeight.w600,
                      )),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      SocialMediaSignInWidget(
                          width: 150.w,
                          text: 'Google',
                          imagePath: Assets.google),
                      SizedBox(width: 5),
                      SocialMediaSignInWidget(
                          width: 150.w,
                          text: 'Facebook',
                          imagePath: Assets.facebook),
                    ],
                  ),
                  AnotherTypeAuthWidget(
                      title: 'Already have an account?',
                      onPressed: () {
                        context.go(AppRouter.loginView);
                      },
                      buttonTitle: 'SignIn'),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
