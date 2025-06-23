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
import 'package:trackmind/features/Auth/presentation/views/widgets/social_media_sign_in_widget.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.lightScafold,
      body: Column(
        children: [
          Expanded(
            child: Container(
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 20.0),
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: Icon(
                          Icons.help,
                          color: ColorManager.eclipse,
                          size: 50.r,
                        ),
                      ),
                    ),
                    const Spacer(),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Text(
                        textAlign: TextAlign.center,
                        'Welcome to Track Mind',
                        style: Styles.textStyle30.copyWith(
                          color: ColorManager.eclipse,
                        ),
                      ),
                    ),
                    SizedBox(height: 20.h),
                    SocialMediaSignInWidget(
                      text: 'Sign in with Google',
                      imagePath: Assets.google,
                    ),
                    SizedBox(height: 10.h),
                    SocialMediaSignInWidget(
                      text: 'Sign in with Facebook',
                      imagePath: Assets.facebook,
                    ),
                    SizedBox(height: 10.h),
                  ],
                ),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            decoration: BoxDecoration(
              color: ColorManager.whiteColor,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30), topRight: Radius.circular(30)),
            ),
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 20.0),
                child: Column(
                  children: [
                    Text('Login with email', style: Styles.textStyle16),
                    SizedBox(height: 10.h),
                    CustomTextField(
                        prefix: Icons.email_outlined,
                        hint: 'Email',
                        controller: emailController,
                        inputType: TextInputType.emailAddress),
                    CustomTextField(
                        prefix: Icons.lock_outline_rounded,
                        hint: 'Password',
                        obscureText: true,
                        controller: passwordController,
                        inputType: TextInputType.text),
                    MainButton(onTap: () {
                      context.go(AppRouter.navBarView,
                          extra: false); // Navigate to home view
                    }, title: 'Login'),
                    SizedBox(height: 10.h),
                    TextButton(
                      onPressed: () {
                        context.push(AppRouter.forgetPassword);
                      },
                      child: Text(
                        'Forget Password?',
                        style: Styles.textStyle14.copyWith(
                          color: ColorManager.eclipse,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    SizedBox(height: 5.h),
                    AnotherTypeAuthWidget(
                        title: 'Don\'t have an account?',
                        onPressed: () {
                          context.go(AppRouter.signUpView);
                        },
                        buttonTitle: 'Sign Up'),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
