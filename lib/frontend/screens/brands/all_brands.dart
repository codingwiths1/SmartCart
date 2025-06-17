import 'package:ecommerce_app_thumbnail/frontend/constants/spacing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import '../../../controllers/store/store_controller.dart';
import '../../reusable widgets/brand/brandlists.dart';
import '../../reusable widgets/re_appbar.dart';
import 'package:get/get.dart';

import 'brand_screen.dart';

class AllBrands extends StatelessWidget {
  const AllBrands({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        automaticallyImplyLeading: false,
        flexibleSpace: ReAppbar(
          showBackButton: true,
          isStack: false,
          widget1:
              Text("Brands", style: Theme.of(context).textTheme.headlineMedium),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: sPadding,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              hSpacingMedium,
              MasonryGridView.builder(
                  itemCount: StoreController.brand.length,
                  mainAxisSpacing: 15,
                  crossAxisSpacing: 15,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: SliverSimpleGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2),
                  itemBuilder: (BuildContext context, int index) {
                    String brandName = StoreController.brand[index]["Name"];
                    return InkWell(
                        borderRadius: BorderRadius.circular(15),
                        onTap: () => Get.to(() => BrandScreen(
                              brandNames: brandName,
                            )),
                        child: BrandList(brandNames: brandName));
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
