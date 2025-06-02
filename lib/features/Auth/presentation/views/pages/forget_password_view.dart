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

class ForgetPasswordView extends StatefulWidget {
  const ForgetPasswordView({super.key});

  @override
  State<ForgetPasswordView> createState() => _ForgetPasswordViewState();
}

class _ForgetPasswordViewState extends State<ForgetPasswordView> {
  TextEditingController emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.lightScafold,
      appBar: AppBar(
          leadingWidth: 100.w,
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: ColorManager.lightEclipse,
              ),
              child: IconButton(
                icon: Icon(Icons.arrow_back, color: ColorManager.eclipse),
                onPressed: () => Navigator.of(context).pop(),
              ),
            ),
          )),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Center(
            child: Column(
              children: [
                Text(
                  'Forget Your Password?',
                  style: Styles.textStyle20.copyWith(
                    color: ColorManager.eclipse,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 10),
                Image.asset(
                  Assets.forgetpassword,
                  height: 250.h,
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                  decoration: BoxDecoration(
                    color: ColorManager.whiteColor,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    children: [
                      Text(
                        'Enter your email address below and we will send you a link to reset your password.',
                        style: Styles.textStyle14.copyWith(
                          color: ColorManager.eclipse,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      CustomTextField(
                          prefix: null,
                          controller: emailController,
                          inputType: TextInputType.emailAddress,
                          hint: 'Email Address'),
                      MainButton(onTap: () {}, title: 'Send Reset Link'),
                    ],
                  ),
                ),
                SizedBox(height: 30.h),
                AnotherTypeAuthWidget(
                    title: 'Remember Password',
                    onPressed: () {
                      context.go(AppRouter.loginView);
                    },
                    buttonTitle: 'Login'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
