import 'package:get/get.dart';

class BottomNavBarController extends GetxController{

  RxInt currentIndex = 0.obs;

  void tapped(int index) {
    currentIndex.value = index;
  }
}