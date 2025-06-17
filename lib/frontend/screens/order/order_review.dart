import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import '../../../controllers/shipping_address_selection/shipping_address_selection.dart';
import '../../constants/colors.dart';
import '../../constants/spacing.dart';
import '../../reusable widgets/address/selected_address.dart';
import '../../reusable widgets/button.dart';
import '../../reusable widgets/cart/cart_product_item.dart';
import '../../reusable widgets/order/container_border.dart';
import '../../reusable widgets/order/subtotal_catalog.dart';
import '../../reusable widgets/profile page/re_divider.dart';
import '../../reusable widgets/re_appbar.dart';
import '../../reusable widgets/row_text.dart';
import '../address/add_new_address.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List product = [
      {
        "url": "assets/images/product_images/13340530802-e1.jpg",
        "product": "Galaxy Shoes",
        "brand": "ZARA",
        "price": "700"
      },
      {
        "url": "assets/images/product_images/02193105330-e1.jpg",
        "product": " Printed Satin Midi Dress",
        "brand": "ZARA",
        "price": "110"
      },

      {
        "url": "assets/images/product_images/iphone_16.png",
        "product": "Iphone 16",
        "brand": "Apple",
        "price": "1200"
      },
      {
        "url": "assets/images/product_images/12450420800-e1.jpg",
        "product": "Men Shoes",
        "brand": "Nike",
        "price": "299"
      },

    ];

    return Scaffold(
      // Appbar.................................................................
      appBar: AppBar(
        toolbarHeight: 75,
        automaticallyImplyLeading: false,
        flexibleSpace: ReAppbar(
          isStack: false,
          showBackButton: true,
          widget1: Text(
            "Order Review",
            style: Theme.of(context).textTheme.headlineMedium,
          ),
        ),
      ),

      // Body...................................................................
      body: SingleChildScrollView(
        child: Padding(
          padding: sPadding,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              hSpacingMedium,
              ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: product.length,
                  itemBuilder: (_, index) {
                    return Stack(
                      children: [
                        CartProductItem(

                          usePriceRow: false, product: product[index],
                        ),
                        Positioned(
                          top: 10,
                          right: 15,
                          child: Material(
                              color: Colors.transparent,
                              child: Icon(Icons.clear)),
                        )
                      ],
                    );
                  }),
              hSpacingMedium,
              ContainerBorder(
                padding: EdgeInsets.only(left: 15, right: 5, top: 2, bottom: 2),
                child: Row(
                  children: [
                    Expanded(
                        flex: 7,
                        child: TextField(
                          decoration: InputDecoration(
                              hintText: "Have Coupon Code? Enter Here",
                              hintStyle: Theme.of(context)
                                  .textTheme
                                  .titleLarge!
                                  .copyWith(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .tertiary),
                              border: InputBorder.none),
                        )),
                    Expanded(
                      flex: 2,
                      child: Button(
                          bgColor: blueColor,
                          child: Text(
                            "Apply",
                            style: Theme.of(context)
                                .textTheme
                                .titleLarge!
                                .copyWith(color: Colors.white),
                          )),
                    ),
                  ],
                ),
              ),
              hSpacingMedium,
              ContainerBorder(
                  rBDegree: 10,
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 7),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SubTotalCatalog(
                        text1: 'Subtotal',
                        text2: '\$300',
                      ),

                      hSpacingSmall,
                      SubTotalCatalog(
                        text1: 'Shipping fee',
                        text2: '\$200',
                      ),
                      hSpacingSmall,
                      SubTotalCatalog(
                        text1: 'Tax fee',
                        text2: '\$10',
                      ),

                      hSpacingMedium,

                      SubTotalCatalog(
                        changeStyle: true,
                        style: Theme.of(context)
                            .textTheme
                            .headlineSmall!
                            .copyWith(
                                fontWeight: FontWeight.w600, fontSize: 20),
                        text1: 'Order Total',
                        text2: '\$1000',
                      ),
                      hSpacingMedium,
                      ReDivider(),
                      hSpacingMedium,
                      RowText(
                        usePadding: false,
                        boldText: "Payment Method",
                        showSmallText: true,
                        smallText: "Change",
                      ),
                      hSpacingSmall,
                      Text("Paypal"),
                      hSpacingMedium,
                      RowText(
                        onTap:
                            () => // ShowModalBottomSheet...............................
                                showModalBottomSheet(
                                    context: context,
                                    builder: (_) {
                                      return Stack(
                                        children: [
                                          Container(
                                              decoration: BoxDecoration(
                                                  color: Theme.of(context)
                                                      .scaffoldBackgroundColor,
                                                  borderRadius:
                                                      BorderRadius.only(
                                                          topLeft:
                                                              Radius.circular(
                                                                  10),
                                                          topRight:
                                                              Radius.circular(
                                                                  10))),
                                              padding: aPadding,
                                              height: 450,
                                              width: double.maxFinite,
                                              child: SingleChildScrollView(
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    hSpacingMedium,
                                                    RowText(
                                                      boldText: "Addresses",
                                                      usePadding: false,
                                                    ),
                                                    hSpacingSmall,
                                                    SelectedAddress(
                                                      selectedAddress: true, name: 'Benjamin Kate', phone: '+343 63635263526', address: 'Los Angeles, CA 90001, United State',


                                                    ),
                                                    hSpacingMedium,
                                                    SelectedAddress(
                                                      selectedAddress: false, name: 'Benjamin Kate', phone: '+343 63635263526', address: 'Los Angeles, CA 90001, United State',


                                                    )
                                                  ],
                                                ),
                                              )),
                                          Positioned(
                                            bottom: 20,
                                            left: 16,
                                            right: 16,
                                            child: Material(
                                              color: Color(0xff2962FF),
                                              borderRadius: cBorderRadius,
                                              child: InkWell(
                                                onTap: () => Get.to(
                                                        () => AddNewAddress())
                                                    ?.then((_) =>
                                                        Navigator.pop(context)),
                                                borderRadius: cBorderRadius,
                                                child: Button(
                                                  bgColor: Colors.transparent,
                                                  child: Text(
                                                    "Add new address",
                                                    style: Theme.of(context)
                                                        .textTheme
                                                        .titleLarge!
                                                        .copyWith(
                                                            color: whiteColor),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          )
                                        ],
                                      );
                                    }),
                        useOnTap: true,
                        usePadding: false,
                        boldText: "Shipping Address",
                        showSmallText: true,
                        smallText: "Change",
                      ),

// Shipping Address.......................................
                      hSpacingSmall,

                            Container(
                                width: double.maxFinite,
                                padding: aPadding,
                                decoration: BoxDecoration(
                                    color: choiceColors,
                                    borderRadius: cBorderRadius),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      width: 250,
                                      child: Text(
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                        // selected["name"],
                                        "Benjamin Kate",
                                        style: Theme.of(context)
                                            .textTheme
                                            .titleLarge!
                                            .copyWith(color: blackColor),
                                      ),
                                    ),
                                    hContainerSpacing,
                                    SizedBox(
                                      width: 250,
                                      child: Text(
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                        "+345 2335525425",
                                        style: Theme.of(context)
                                            .textTheme
                                            .titleMedium!
                                            .copyWith(
                                                color: blackColor,
                                                fontWeight: FontWeight.w500),
                                      ),
                                    ),
                                    hContainerSpacing,
                                    Text(
                                        style: Theme.of(context)
                                            .textTheme
                                            .titleMedium!
                                            .copyWith(color: blackColor),
                                       "Los Angeles, CA 90001, United State",
                                    ),
                                  ],
                                ),
                              ),
                    ],
                  )),
              hSpacingMedium
            ],
          ),
        ),
      ),
      bottomNavigationBar: SizedBox(
        height: 70,
        child: GestureDetector(
          onTap: () => Get.toNamed("/OrderScreen"),
          child: Button(
            margin: aPadding,
            padding: aPadding,
            child: Text(
              "Checkout \$3453",
              style: Theme.of(context)
                  .textTheme
                  .titleLarge!
                  .copyWith(color: whiteColor),
            ),
          ),
        ),
      ),
    );
  }
}
