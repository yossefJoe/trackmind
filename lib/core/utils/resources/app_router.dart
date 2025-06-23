import 'package:go_router/go_router.dart';
import 'package:trackmind/features/Auth/presentation/views/pages/create_account_view.dart';
import 'package:trackmind/features/Auth/presentation/views/pages/forget_password_view.dart';
import 'package:trackmind/features/Auth/presentation/views/pages/login_view.dart';
import 'package:trackmind/features/home/presentation/views/pages/nav_bar_view.dart';
import 'package:trackmind/features/home/presentation/views/pages/new_habit_screen.dart';
import 'package:trackmind/features/onboarding/presentation/pages/on_boarding_page.dart';

abstract class AppRouter {
  static const homeView = '/homeview';
  static const loginView = '/login';
  static const forgetPassword = '/forgetpassword';
  static const signUpView = '/signup';
  static const navBarView = '/navbar';
  static const newHabitPage = '/newhabit';

  static final router = GoRouter(
    initialLocation: '/',
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const OnBoardingPage(),
      ),
      GoRoute(
        path: loginView,
        builder: (context, state) => const LoginView(),
      ),
      GoRoute(
        path: signUpView,
        builder: (context, state) => const CreateAccountView(),
      ),
      GoRoute(
        path: forgetPassword,
        builder: (context, state) => const ForgetPasswordView(),
      ),
      GoRoute(
        path: navBarView,
        builder: (context, state) {
          final isInNewHabitPage = state.extra as bool;
          return NavigateBarView(
            isInNewHabitPage: isInNewHabitPage,
          );
         
        },
      ),
      GoRoute(
        path: newHabitPage,
        builder: (context, state) => const NewHabitScreen(),
      ),

      // GoRoute(
      //   path: addressDetails,
      //   builder: (context, state) {
      //     final data = state.extra as Map<String, dynamic>;
      //     final address = data['address'] as ClientAddressesModel;
      //     final type = data['type'] as String;

      //     return AddressPage(
      //       address: address,
      //       type: type,
      //     );
      //   },
      // ),

      // GoRoute(
      //   path: productDetails,
      //   builder: (context, state) {
      //     final product = state.extra as ProductModel;
      //     return ProductDetailsView(
      //       product: product,
      //     );
      //   },
      // ),
    ],
  );
}
//