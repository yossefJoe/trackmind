class ConstantApi {
  static const String baseUrl =
      'https://devops.exabyte-eg.com/projects/istikbal/apis/public/api';
  static const String login = "$baseUrl/client/access/login";
  static const String signUp = "$baseUrl/client/access/sign-up";
  static const String categories = "$baseUrl/public/categories";
  static const String getProfile = "$baseUrl/client/access/profile";
  static const String getUserFavourites = "$baseUrl/client/wishlist/get";
  static const String products = "$baseUrl/public/products";
  static const String similarProducts = "$baseUrl/public/product/similar";
  static const String productDetails = "$baseUrl/public/product";
  static const String getCart = "$baseUrl/client/cart/get";
  static const String addToCart = "$baseUrl/client/cart/add";
  static const String checkout = "$baseUrl/client/checkout/order";
  static const String updateProfile = "$baseUrl/client/access/updateProfile";
  static const String forgetPassword = "$baseUrl/client/access/forget";
  static const String addFavourite = "$baseUrl/client/wishlist/add";
  static const String searchProduct = "$baseUrl/public/products/search";
  static const String clientAddresses = "$baseUrl/client/address/get";
  static const String addressDeps = "$baseUrl/client/address/deps";
  static const String userOrders = "$baseUrl/client/order/get";
  static const String orderDetails = "$baseUrl/client/order/details";
  static const String cancelOrder = "$baseUrl/client/order/cancel";
  static const String addAddress = "$baseUrl/client/address/add";
  static const String updateAddress = "$baseUrl/client/address/upd";
  static const String deleteAddress = "$baseUrl/client/address/del";
  static const String getreviews = "$baseUrl/public/product/reviews";
  static const String addReview = "$baseUrl/client/review/add";
  static const String getUserReviews = "$baseUrl/client/review/get";
}
