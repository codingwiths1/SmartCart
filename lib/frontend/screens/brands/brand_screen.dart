import 'package:ecommerce_app_thumbnail/frontend/constants/spacing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:iconsax/iconsax.dart';

import '../../reusable widgets/order/container_border.dart';
import '../../reusable widgets/re_appbar.dart';
import '../../reusable widgets/row_text.dart';


class BrandScreen extends StatelessWidget {
  const BrandScreen({super.key, required this.brandNames});
  final String brandNames;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /// AppBar
      appBar: AppBar(
        automaticallyImplyLeading: false,
        toolbarHeight: 80,
        flexibleSpace: ReAppbar(
          isStack: false,
          showBackButton: true,
          widget1: Text(
            brandNames,
            style: Theme.of(context).textTheme.headlineMedium,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: sPadding,
          child: Column(
            children: [
              hSpacingMedium,

              /// Sort Menu
              ContainerBorder(
                padding: sPadding,
                child: Row(
                  children: [
                    Icon(Iconsax.sort),
                    wContainerSpacing,
                    Expanded(
                      child: DropdownButtonFormField(
                          decoration: InputDecoration(border: InputBorder.none),
                          items: [
                            "Name",
                            "Newest",
                            "Sales",
                            "Popular",
                            "Lowest Price",
                            "Highest Price"
                          ]
                              .map((options) => DropdownMenuItem(
                                  value: options, child: Text(options)))
                              .toList(),
                          onChanged: (value) {}),
                    ),
                  ],
                ),
              ),

              /// Row Text
              hSpacingMedium,
              RowText(
                boldText: "Products",
                showSmallText: false,
                usePadding: false,
              ),

              /// Product GridView DisPlay
              hSpacingMedium,
              MasonryGridView.builder(
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount:5,
                  gridDelegate: SliverSimpleGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2),
                  itemBuilder: (context, index) {
                    return  Container(height: 70,width: 70,color: Colors.blue,);
                  }),
              hSpacingLarge,
            ],
          ),
        ),
      ),
    );
  }
}
