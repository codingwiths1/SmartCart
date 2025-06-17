// import 'package:ecommerce_app_thumbnail/backend/authentication/auth.dart';
// import 'package:ecommerce_app_thumbnail/controllers/snack_message.dart';
// import 'package:ecommerce_app_thumbnail/frontend/constants/colors.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:get_storage/get_storage.dart';
//
// import '../backend/internet_checker.dart';
//
// class SignUpController extends GetxController {
//   final controller = Get.find<InternetChecker>();
//
//   // Bool......................................................................
//   var loginPasswordCheck = true.obs;
//   var rememberMeCheck = false.obs;
//   var signUpPasswordCheck = true.obs;
//   var termsCheck = false.obs;
//
//   // Global Keys................................................................
//   GlobalKey<FormState> passwordResetKey = GlobalKey<FormState>();
//
//   // Text Field Texts...........................................................
//   var firstNameField = TextEditingController();
//   var lastNameField = TextEditingController();
//   var userNameField = TextEditingController();
//   var emailField = TextEditingController();
//   var phoneNumberField = TextEditingController();
//   var passwordField = TextEditingController();
//   var loginEmailField = TextEditingController();
//   var loginPasswordField = TextEditingController();
//   var resetPasswordField = TextEditingController();
//
//   // Register User..............................................................
//   createAccount() {
//     String email = emailField.text.trim();
//     String password = passwordField.text.trim();
//     String firstName = firstNameField.text.trim();
//     String lastName = lastNameField.text.trim();
//     String userName = userNameField.text.trim();
//     String phoneNumber = phoneNumberField.text.trim();
//
//     Auth.createAccount(
//         email, password, firstName, lastName, userName, phoneNumber);
//   }
//
// // Login User...................................................................
//   loginUser() {
//     String email = loginEmailField.text.trim();
//     String password = loginPasswordField.text.trim();
//
//     // Save email and password................................................
//     if (rememberMeCheck.value) {
//       var localStorage = GetStorage();
//       localStorage.write("EMAIL", email);
//       localStorage.write("PASSWORD", password);
//     }
//     Auth.signInUser(email, password);
//   }
//
//   // Validate Sign Up User......................................................
//   validateSignUp() {
//     if (controller.isConnected == true) {
//       if (termsCheck.value == true) {
//         createAccount();
//       } else {
//         Get.rawSnackbar(
//             snackPosition: SnackPosition.TOP,
//             borderRadius: 15,
//             backgroundColor: blueColor,
//             margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
//             padding: EdgeInsets.all(15),
//             icon: Icon(
//               Icons.info_outline_rounded,
//               color: whiteColor,
//             ),
//             messageText: Text(
//               "Agree to terms before proceeding",
//               style: TextStyle(
//                   fontSize: 16,
//                   fontWeight: FontWeight.w500,
//                   color: whiteColor,
//                   fontFamily: "Roboto"),
//             ));
//       }
//     } else {
//       Get.rawSnackbar(
//           snackPosition: SnackPosition.BOTTOM,
//           backgroundColor: Colors.grey.shade800,
//           margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
//           padding: EdgeInsets.all(10),
//           icon: Icon(
//             Icons.wifi_off_rounded,
//             color: whiteColor,
//           ),
//           messageText: Text(
//             "No internet connection",
//             style: TextStyle(
//                 fontSize: 16,
//                 fontWeight: FontWeight.w500,
//                 color: whiteColor,
//                 fontFamily: "Roboto"),
//           ));
//     }
//   }
//
// // Validate login User..........................................................
//   validateLogin() async {
//     if (controller.isConnected == true) {
//       loginUser();
//     } else {
//       Get.rawSnackbar(
//           instantInit: true,
//           snackPosition: SnackPosition.BOTTOM,
//           backgroundColor: Colors.grey.shade800,
//           margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
//           padding: EdgeInsets.all(10),
//           icon: Icon(
//             Icons.wifi_off_rounded,
//             color: whiteColor,
//           ),
//           messageText: Text(
//             "No internet connection",
//             style: TextStyle(
//                 fontSize: 16,
//                 fontWeight: FontWeight.w500,
//                 color: whiteColor,
//                 fontFamily: "Roboto"),
//           ));
//     }
//   }
//
// // Validate Resend Password.....................................................
//   validateResendPassword() {
//     if (passwordResetKey.currentState!.validate()) {
//       if (controller.isConnected == true) {
//         resetUserPassword();
//       } else {
//         Get.rawSnackbar(
//             snackPosition: SnackPosition.BOTTOM,
//             backgroundColor: Colors.grey.shade800,
//             margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
//             padding: EdgeInsets.all(10),
//             icon: Icon(
//               Icons.wifi_off_rounded,
//               color: whiteColor,
//             ),
//             messageText: Text(
//               "No internet connection",
//               style: TextStyle(
//                   fontSize: 16,
//                   fontWeight: FontWeight.w500,
//                   color: whiteColor,
//                   fontFamily: "Roboto"),
//             ));
//       }
//     }
//   }
//
//   //Reset login Password.........................................................
//   resetUserPassword() {
//     String email = resetPasswordField.text.trim();
//     Auth.resetUserPassword(email);
//   }
//
// //Google SignIn.................................................................
//   googleSignIn() async {
//     String email = emailField.text.trim();
//     String password = passwordField.text.trim();
//     String firstName = firstNameField.text.trim();
//     String lastName = lastNameField.text.trim();
//     String userName = userNameField.text.trim();
//     String phoneNumber = phoneNumberField.text.trim();
//     //
//
//     Auth.googleSignIn(
//         firstName, lastName, userName, email, phoneNumber, password);
//   }
//
//   // Validate Google SignIn.....................................................
//   validateGoogleSignIn(BuildContext context) {
//     if (controller.isConnected == true) {
//       googleSignIn();
//     } else {
//       var message = SnackMessage(text: "No internet connection");
//       message.snackBar(context);
//     }
//   }
// }
