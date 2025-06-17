import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class ShippingAddressController extends GetxController {
  final localStorage = GetStorage();

  RxInt selectedIndex = (-1).obs; // -1 means no selection initially

  void selectAddress(int index) {
    selectedIndex.value = index;
  }

  List addressesList = [
    {
      "name": "Coding with S",
      "phone": "+567-78674388-877",
      "address": "Your address",
      "Id": 0
    },
    {
      "name": "Coding with T",
      "phone": "+567-78674388-877",
      "address": "Shang hai China",
      "Id": 1
    }
  ];
}
