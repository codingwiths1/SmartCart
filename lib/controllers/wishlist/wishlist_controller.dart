// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:ecommerce_app_thumbnail/backend/getting_data/get_user_data.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:get/get.dart';
//
// import '../snack_message.dart';
//
// final controller = Get.find<GetUserData>();
//
// class WishList extends GetxController {
//   wishlistMessages(String productId, BuildContext context) {
//     if (!controller.userFavourite.contains(productId)) {
//       FirebaseFirestore.instance
//           .collection("Users")
//           .doc(FirebaseAuth.instance.currentUser!.uid)
//           .update({
//         "UserFavourite": FieldValue.arrayUnion([productId])
//       });
//
//       var message = SnackMessage(text: "Product added to favourite");
//       message.snackBar(context);
//     } else {
//       FirebaseFirestore.instance
//           .collection("Users")
//           .doc(FirebaseAuth.instance.currentUser!.uid)
//           .update({
//         "UserFavourite": FieldValue.arrayRemove([productId])
//       });
//       var message = SnackMessage(text: "Product removed to favourite");
//       message.snackBar(context);
//     }
//   }
// }
