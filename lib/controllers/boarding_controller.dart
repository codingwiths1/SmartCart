import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class BoardingController extends GetxController {
  /// Page Controller
  final controller = PageController();

  /// CurrentIndex
  var currentIndex = 0.obs;

  /// Current Index Page
  currentPage(index) {
    currentIndex.value = index;
  }

  /// OnDot Index
  dotIndex(index) {
    controller.jumpToPage(index);
  }

  /// Skip Page Function
  void skipPages() {
    controller.jumpToPage(2);
  }

  /// Next Page Function
  nextPage() {
    // final storage = GetStorage();
    // storage.write("isFirstTime", true);
    // print(storage.read("isFirstTime"));
    controller.nextPage(
        duration: Duration(microseconds: 1), curve: Curves.linear);
  }
}
