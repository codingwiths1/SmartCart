import 'package:ecommerce_app_thumbnail/frontend/screens/brands/brand_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import '../../../controllers/store/store_controller.dart';
import '../../ReUsable Widgets/Store Page/re_tab_bar.dart';
import '../../ReUsable Widgets/Store Page/rounded_border_container.dart';
import '../../ReUsable Widgets/Store Page/store_brand_card.dart';
import '../../ReUsable Widgets/re_appbar.dart';
import '../../ReUsable Widgets/row_text.dart';
import '../../constants/colors.dart';
import '../../constants/spacing.dart';
import '../../constants/strings.dart';
import '../../reusable widgets/homepage/verified_brand_name.dart';
import '../brands/all_brands.dart';

class StoreScreen extends StatefulWidget {
  const StoreScreen({super.key});

  @override
  State<StoreScreen> createState() => _StoreScreenState();
}

class _StoreScreenState extends State<StoreScreen>
    with TickerProviderStateMixin {
  late TabController _controller;

  @override
  void initState() {
    _controller = TabController(length: 6, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    List product = [
      {
        "url":
            "assets/images/product_images/61dlFzm4TbL._AC_UL480_FMwebp_QL65_.webp",
        "product": "Women's Heeled Sandals",
        "brand": "Nike",
        "price": "45"
      },
      {
        "url": "assets/images/product_images/02193105330-e1.jpg",
        "product": " Printed Satin Midi Dress",
        "brand": "ZARA",
        "price": "110"
      },
      {
        "url":
            "assets/images/product_images/81ABgxPwuNL._AC_SX679_PIbundle-2,TopRight,0,0_SH20_.jpg",
        "product": "Johnson's Baby Care Essentials Gift Set",
        "brand": "Johnson & Johnson",
        "price": "9.05"
      },
      {
        "url": "assets/images/product_images/nonshop_blue.webp",
        "product": " Galaxy Z Flip6",
        "brand": "SamSung",
        "price": "500"
      },
      {
        "url": "assets/images/product_images/13340530802-e1.jpg",
        "product": "Galaxy Shoes",
        "brand": "ZARA",
        "price": "700"
      },
      {
        "url": "assets/images/product_images/samsungwatch7-2_1_1.jpg",
        "product": "Galaxy Watch7",
        "brand": "SamSung",
        "price": "300"
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
      {
        "url":
            "assets/images/product_images/927f6a6558b1ee59c7973ad213fa5db2.jpg",
        "product": "SpiderMan: Miles Morales",
        "brand": "Sony",
        "price": "99.99"
      },
      {
        "url": "assets/images/product_images/1.jpg",
        "product": "White Nike Air Shoes",
        "brand": "Nike",
        "price": "100"
      },
    ];

    return DefaultTabController(
      length: 5,
      child: Scaffold(

          //........................... ReUsable AppBar ............................//
          appBar: ReAppbar(
            widget: Text("Store",
                style: Theme.of(context).textTheme.headlineMedium),
            color1: Theme.of(context).colorScheme.primary,
            color2: Theme.of(context).colorScheme.primary,
            color3: Theme.of(context).colorScheme.secondary,
          ),

          //........................... NestedScrollView ............................//
          body: NestedScrollView(
            clipBehavior: Clip.none,
            headerSliverBuilder: (_, isScroll) => [
              //........................... SliverAppBar ............................//
              SliverAppBar(
                  clipBehavior: Clip.none,
                  scrolledUnderElevation: 0,
                  automaticallyImplyLeading: false,
                  pinned: true,
                  floating: true,
                  expandedHeight: 440,
                  flexibleSpace: ListView(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    children: [
                      hSpacingLarge,

                      //........................... SearchBar ............................//
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 16, vertical: 0),
                        child: TextFormField(
                          textInputAction: TextInputAction.search,
                          decoration: InputDecoration(
                            hintText: "Search in Store",
                            hintStyle: Theme.of(context)
                                .textTheme
                                .bodySmall!
                                .apply(
                                    color: Theme.of(context)
                                        .colorScheme
                                        .onSecondary),
                            border: OutlineInputBorder(
                                borderRadius: cBorderRadius,
                                borderSide: BorderSide(
                                    color: Theme.of(context)
                                        .colorScheme
                                        .onSecondary)),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: cBorderRadius,
                                borderSide: BorderSide(
                                    color: Theme.of(context)
                                        .colorScheme
                                        .onSecondary)),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: cBorderRadius,
                                borderSide: BorderSide(
                                    color: Theme.of(context)
                                        .colorScheme
                                        .onSecondary)),
                            contentPadding: EdgeInsets.zero,
                            prefixIcon: Icon(Iconsax.search_normal,
                                color:
                                    Theme.of(context).colorScheme.onSecondary),
                          ),
                        ),
                      ),
                      hSpacingMedium,

                      //........................... Featured Brands ............................//

                      GestureDetector(
                          onTap: () => Get.to(() => AllBrands()),
                          child: RowText(
                            boldText: "Featured Brands",
                            showSmallText: true,
                          )),
                      hSpacingMedium,
                      Padding(
                        padding: hSPadding,

                        //........................... Brands GridView ............................//
                        child: MasonryGridView.builder(
                          mainAxisSpacing: 10,
                          crossAxisSpacing: 10,
                          itemCount: 4,
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          gridDelegate:
                              SliverSimpleGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 2),
                          itemBuilder: (BuildContext context, int index) =>
                              InkWell(
                            borderRadius: BorderRadius.circular(15),
                            onTap: () => Get.to(() => BrandScreen(
                                brandNames: StoreController.brand[index]
                                    ["Name"])),
                            child: RoundedBorderContainer(
                                margin: EdgeInsets.all(0),
                                padding: EdgeInsets.all(12),
                                child: Row(
                                  children: [
                                    SizedBox(
                                        width: 35,
                                        child: Image.asset(
                                          nikeNoBackground,
                                          color: Theme.of(context)
                                              .colorScheme
                                              .primary,
                                        )),
                                    SizedBox(width: 15),
                                    Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          children: [
                                            Text(
                                                StoreController.brand[index]
                                                    ["Name"],
                                                maxLines: 2,
                                                overflow: TextOverflow.ellipsis,
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .bodyMedium!
                                                    .copyWith(
                                                        color: Theme.of(context)
                                                            .colorScheme
                                                            .primary,
                                                        fontSize: 15)),
                                            SizedBox(width: 2),
                                            Icon(
                                              Iconsax.verify5,
                                              color: blueColor,
                                              size: 15,
                                            )
                                          ],
                                        ),
                                        SizedBox(
                                          width: 100,
                                          child: Text(
                                            maxLines: 1,
                                            overflow: TextOverflow.ellipsis,
                                            "256 products",
                                            style: Theme.of(context)
                                                .textTheme
                                                .titleSmall,
                                          ),
                                        )
                                      ],
                                    ),
                                  ],
                                )),
                          ),
                        ),
                      )
                    ],
                  ),

                  //........................... Product Categories ............................//

                  bottom: PreferredSize(
                      preferredSize: Size.fromHeight(70), child: ReTabBar()))
            ],
            body: TabBarView(
                controller: _controller,
                physics: NeverScrollableScrollPhysics(),
                clipBehavior: Clip.none,
                children: [
                  ListView(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    children: [
                      //........................... Brands Cards ............................//

                      StoreBrandCard(
                          top: 20,
                          brandName: 'Nike',
                          productAvailable: '22',
                          brandLogo: nikeNoBackground,
                          productImage: product1),
                      hSpacingMedium,

                      //........................... RowText ............................//
                      RowText(
                        boldText: 'You might like',
                      ),
                      hSpacingMedium,

                      //........................... Product Display Gridview ............................//
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        child: MasonryGridView.builder(
                            mainAxisSpacing: 20,
                            crossAxisSpacing: 10,
                            shrinkWrap: true,
                            physics: NeverScrollableScrollPhysics(),
                            itemCount: product.length,
                            gridDelegate: SliverSimpleGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2),
                            itemBuilder: (context, index) {
                              return InkWell(onTap: (){  Get.toNamed( "/ProductDetails",arguments: product[index] );
                                // ProductDetails(product: product[index],);
                              },
                                child: Container(
                                  height: 331,
                                  padding: EdgeInsets.all(1),
                                  width: 180,
                                  decoration: BoxDecoration(
                                      color: Theme.of(context).colorScheme.secondary,
                                      borderRadius: BorderRadius.circular(15)),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      //........................... Stack Widget Image && Discount && Favourite ............................//
                                      Stack(children: [
                                        ClipRRect(
                                          borderRadius: cBorderRadius,
                                          child: Image.asset(
                                            product[index]["url"],
                                            height: 180,
                                            width: double.infinity,
                                            fit: BoxFit.contain,
                                          ),
                                        ),
                                        Positioned(
                                          top: dVertical,
                                          left: dVertical,
                                          child: Container(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 10, vertical: 5),
                                            decoration: BoxDecoration(
                                                color: yellowColor,
                                                borderRadius: cBorderRadius),
                                            child: Text("4%",
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .bodySmall!
                                                    .copyWith(color: blackColor)),
                                          ),
                                        ),
                                        Positioned(
                                          top: dVertical,
                                          right: dVertical,
                                          child:  InkWell(
                                              onTap: () {
                                              },
                                              child: Icon(
                                                color: whiteColor,
                                                Iconsax.heart4,
                                                size: 28,
                                              ),
                                            ),
                                        ),
                                      ]),

                                      //........................... Product Name ............................//
                                      SizedBox(height: 20),
                                      Expanded(
                                        child: Padding(
                                          padding: EdgeInsets.only(left: 5),
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                  maxLines: 2,
                                                  overflow: TextOverflow.ellipsis,
                                                  product[index]["product"],
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .titleMedium!
                                                      .apply(
                                                      color: Theme.of(context)
                                                          .colorScheme
                                                          .primary)),
                                              SizedBox(height: 5),

                                              //........................... Product Brand ............................//
                                              VerifiedBrandName(
                                                  brandName: product[index]["brand"]),

                                              //........................... Pricing && Add Icon ............................//// LayoutBuilder(
                                              Spacer(),
                                              Row(
                                                mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                                children: [
                                                  SizedBox(
                                                    width: 135,
                                                    child: Text(
                                                      maxLines: 1,
                                                      overflow: TextOverflow.ellipsis,
                                                      "\$${product[index]["price"]}",
                                                      style: Theme.of(context)
                                                          .textTheme
                                                          .headlineMedium!
                                                          .copyWith(fontSize: 20),
                                                    ),
                                                  ),
                                                  GestureDetector(
                                                    onTap: () {},
                                                    child: Container(
                                                      height: 40, width: 40,
                                                      // padding: EdgeInsets.all(6),
                                                      decoration: BoxDecoration(
                                                          color: Theme.of(context)
                                                              .colorScheme
                                                              .primary,
                                                          borderRadius: BorderRadius.only(
                                                              topLeft: Radius.circular(15),
                                                              bottomRight:
                                                              Radius.circular(15))),
                                                      child: Center(
                                                        child: Icon(Iconsax.add,
                                                            color: Theme.of(context)
                                                                .colorScheme
                                                                .secondary),
                                                      ),
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              );
                            }),
                      ),

                      hSpacingMedium
                    ],
                  ),

                  //........................... Brands Cards ............................//
                  StoreBrandCard(
                      brandName: 'Apple',
                      productAvailable: '22',
                      brandLogo: adidasLogo,
                      productImage: product1),
                  StoreBrandCard(
                      brandName: 'Sony',
                      productAvailable: '22',
                      brandLogo: nikeNoBackground,
                      productImage: product1),
                  StoreBrandCard(
                      brandName: 'ZARA',
                      productAvailable: '22',
                      brandLogo: nikeNoBackground,
                      productImage: product1),
                  StoreBrandCard(
                      brandName: 'Johnson & Johnson',
                      productAvailable: '22',
                      brandLogo: nikeNoBackground,
                      productImage: product1),
                  SizedBox(
                    height: 50,
                  ),
                ]),
          )),
    );
  }
}
