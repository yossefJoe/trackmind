import 'package:go_router/go_router.dart';
import 'package:trackmind/features/Auth/presentation/views/pages/create_account_view.dart';
import 'package:trackmind/features/Auth/presentation/views/pages/forget_password_view.dart';
import 'package:trackmind/features/Auth/presentation/views/pages/login_view.dart';
import 'package:trackmind/features/home/presentation/views/pages/nav_bar_view.dart';
import 'package:trackmind/features/onboarding/presentation/pages/on_boarding_page.dart';
import 'package:trackmind/features/onboarding/presentation/pages/welcome_page.dart';

abstract class AppRouter {
  static const homeView = '/homeview';
  static const loginView = '/login';
  static const forgetPassword = '/forgetpassword';
  static const profileView = '/profile';
  static const products = '/products';
  static const productDetails = '/productdetails';
  static const welcomepageView = '/welcome';
  static const navBarView = '/navbar';
  static const signUpView = '/signup';
  static const filterPage = '/filter';
  static const paymentMethodsPage = '/paymentmethods';
  static const paymentSucessPage = '/paymentsuccess';
  static const checkoutScreen = '/checkout';
  static const productReviewsPage = '/productreviews';
  static const settings = '/settings';
  static const notifications = '/ntoifications';
  static const favourites = '/favourites';
  static const viewAll = '/viewall';
  static const trackOrder = '/trackorder';
  static const updateProfile = '/profilepagedetails';
  static const String addressDetails = '/addressdetails';
  static const String clientAddresses = '/clientaddresses';
  static const String ordersview = '/ordersview';
  static const String orderDetails = '/orderDetails';

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
        builder: (context, state) => const NavigateBarView(),
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