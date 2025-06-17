import 'package:flutter/material.dart';

import '../frontend/constants/colors.dart';
import '../frontend/constants/spacing.dart';

class SnackMessage {
  SnackMessage({required this.text});
  final String text;
   snackBar(BuildContext context) {
    ScaffoldMessenger.of(context).removeCurrentSnackBar();
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      // margin: EdgeInsets.only(bottom: 785, left: 0, right: 0),
      padding: EdgeInsets.all(10),
      backgroundColor: Colors.grey.shade800,
      content: Row(
        children: [
          Icon(
            Icons.wifi_off_rounded,
            color: whiteColor,
          ),
          wSpacingSmall,
          Text(
           text,
          ),
        ],
      ),
      duration: Duration(seconds: 3),
      behavior: SnackBarBehavior.floating,
    ));
  }
}
