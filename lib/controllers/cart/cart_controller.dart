// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:ecommerce_app_thumbnail/backend/getting_data/get_product_data.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
//
// import '../../backend/getting_data/get_user_data.dart';
// import '../../frontend/constants/colors.dart';
//
// final controller = Get.find<GetUserData>();
// final getController = Get.find<GetProductData>();
//
// class Cart extends GetxController {
//   // Variables..........................................
//   RxInt counter = 1.obs;
//
//
//   void addToCart(String productId) {
//     var product = getController.allProducts.firstWhere(
//       (products) => products["Id"] == productId,
//     );
//     if (product != null && !controller.userCart.contains(product)) {
//       FirebaseFirestore.instance
//           .collection("Users")
//           .doc(FirebaseAuth.instance.currentUser!.uid)
//           .update({
//         "UserCart": FieldValue.arrayUnion([product])
//       });
//       Get.rawSnackbar(
//           instantInit: true,
//           snackPosition: SnackPosition.TOP,
//           backgroundColor: blueColor,
//           margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
//           padding: EdgeInsets.all(10),
//           icon: Icon(
//             Icons.info_outline_rounded,
//             color: whiteColor,
//           ),
//           messageText: Text(
//             "Product added to cart",
//             style: TextStyle(
//                 fontSize: 16,
//                 fontWeight: FontWeight.w500,
//                 color: whiteColor,
//                 fontFamily: "Roboto"),
//           ));
//     } else {
//       Get.rawSnackbar(
//           instantInit: true,
//           snackPosition: SnackPosition.TOP,
//           backgroundColor: blueColor,
//           margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
//           padding: EdgeInsets.all(10),
//           icon: Icon(
//             Icons.info_outline_rounded,
//             color: whiteColor,
//           ),
//           messageText: Text(
//             "Product is already to cart",
//             style: TextStyle(
//                 fontSize: 16,
//                 fontWeight: FontWeight.w500,
//                 color: whiteColor,
//                 fontFamily: "Roboto"),
//           ));
//     }
//   }
//
//   void removeFromCart(String productId) {
//     var product = controller.userCart.firstWhere((n) => n["Id"] == productId);
//
//     var userId = FirebaseAuth.instance.currentUser!.uid;
//     DocumentReference<Map<String, dynamic>> userRef =
//         FirebaseFirestore.instance.collection("Users").doc(userId);
//     userRef.update({
//       "UserCart": FieldValue.arrayRemove([product])
//     });
//   }
// }
