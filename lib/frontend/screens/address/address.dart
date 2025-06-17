import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../ReUsable Widgets/re_appbar.dart';
import '../../constants/spacing.dart';
import '../../reusable widgets/address/selected_address.dart';

class Address extends StatelessWidget {
  const Address({super.key, this.selectedAddress = true});
  final bool selectedAddress;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      ///  Floating Action Button
      floatingActionButton: FloatingActionButton(
        onPressed: () => Get.toNamed("/AddNewAddress"),
        child: Icon(
          Iconsax.add,
          color: Theme.of(context).colorScheme.secondary,
        ),
      ),

      /// AppBar
      appBar: AppBar(
        automaticallyImplyLeading: false,
        toolbarHeight: 80,
        flexibleSpace: ReAppbar(
          isStack: false,
          widget: GestureDetector(
              onTap: () => Get.back(), child: Icon(Icons.arrow_back_ios)),
          widget1: Text(
            "Addresses",
            style: Theme.of(context).textTheme.headlineMedium,
          ),
        ),
      ),

      /// Body
      body: SingleChildScrollView(
        child: Padding(
          padding: sPadding,
          child: Column(
            children: [
              /// Address Section
              hSpacingMedium,
              SelectedAddress(
                selectedAddress: true,
                name: 'Benjamin Kate',
                phone: '+343 63635263526',
                address: 'Los Angeles, CA 90001, United State',
              ),
              hSpacingSmall,
              SelectedAddress(
                selectedAddress: false,
                name: 'Catherine Josh',
                phone: '+343 63635263526',
                address: 'Los Angeles, CA 90001, United State',
              ),
              hSpacingSmall,
              SelectedAddress(
                selectedAddress: false,
                name: 'Antonio',
                phone: '+343 63635263526',
                address: 'Los Angeles, CA 90001, United State',
              ),
              hSpacingLarge
            ],
          ),
        ),
      ),
    );
  }
}
