import 'package:ecommerce_app_thumbnail/frontend/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce_app_thumbnail/frontend/screens/order/my_order.dart';
import 'package:flutter/services.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';

import 'frontend/screens/address/add_new_address.dart';
import 'frontend/screens/address/address.dart';
import 'frontend/screens/bottomNavbar screen/profile/user_profile.dart';
import 'frontend/screens/bottom_nav_bar.dart';
import 'frontend/screens/brands/all_brands.dart';
import 'frontend/screens/brands/brand_screen.dart';
import 'frontend/screens/cart_screen.dart';
import 'frontend/screens/category screens/sport.dart';
import 'frontend/screens/email_screen/email_verified.dart';
import 'frontend/screens/email_screen/verify_email.dart';
import 'frontend/screens/forget password/forget_password.dart';
import 'frontend/screens/forget password/password_email_sent.dart';
import 'frontend/screens/login_page.dart';
import 'frontend/screens/order/order_review.dart';
import 'frontend/screens/product_details.dart';
import 'frontend/screens/products/view_all.dart';
import 'frontend/screens/ratings/ratings_screen.dart';
import 'frontend/screens/sign_up_screen.dart';
import 'frontend/themes/theme.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // final connectionController = Get.find<InternetChecker>();
    // final controller = Get.find<SignUpController>();
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        statusBarColor: tColor,
        statusBarIconBrightness:
            MediaQuery.of(context).platformBrightness == Brightness.light
                ? Brightness.dark
                : Brightness.light));
    return NotificationListener<OverscrollIndicatorNotification>(
      onNotification: (overscroll) {
        overscroll.disallowIndicator();
        return true;
      },
      child: Listener(
        behavior: HitTestBehavior.translucent,
        onPointerDown: (PointerDownEvent event) {
          // if (connectionController.isConnected == false) {
          //   connectionController.noInternet();
          // }
        },
        child: GetMaterialApp(
            builder: EasyLoading.init(),
            debugShowCheckedModeBanner: false,
            theme: TTheme.lightTheme,
            darkTheme: TTheme.darkTheme,
            themeMode: ThemeMode.system,
            getPages: [
              GetPage(name: "/LoginPage", page: () => LoginPage()),
              GetPage(name: "/SignUpPage", page: () => SignUpScreen()),
              GetPage(name: "/VerifyEmail", page: () => VerifyEmail()),
              GetPage(name: "/EmailVerified", page: () => EmailVerified()),
              GetPage(name: "/ForgetPassword", page: () => ForgetPassword()),
              GetPage(
                  name: "/PasswordEmailSent", page: () => PasswordEmailSent()),
              GetPage(name: "/BottomNavBar", page: () => BottomNavBar()),
              GetPage(name: "/UserProfile", page: () => UserProfile()),
              GetPage(
                  name: "/ProductDetails",
                  page: () => ProductDetails(
                      )),
              GetPage(name: "/RatingsScreen", page: () => RatingsScreen()),
              GetPage(name: "/UserProfile", page: () => UserProfile()),
              GetPage(name: "/Address", page: () => Address()),
              GetPage(name: "/AddNewAddress", page: () => AddNewAddress()),
              GetPage(name: "/CartScreen", page: () => CartScreen()),
              GetPage(name: "/OrderScreen", page: () => OrderScreen()),
              GetPage(name: "/MyOrder", page: () => MyOrder()),
              GetPage(name: "/Sport", page: () => Sport()),
              GetPage(name: "/ViewAll", page: () => ViewAll()),
              GetPage(name: "/AllBrands", page: () => AllBrands()),
              GetPage(
                  name: "/BrandScreen",
                  page: () => BrandScreen(
                        brandNames: '',
                      )),
            ],
            home: LoginPage()
            // SearchProductScreen()
            // Scaffold()
            ),
      ),
    );
  }
}
