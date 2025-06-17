import 'package:ecommerce_app_thumbnail/frontend/constants/spacing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';


class SearchProductScreen extends StatelessWidget {
  const SearchProductScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        leading:
            InkWell(onTap: () => Get.back(), child: Icon(Icons.arrow_back_ios)),
        title: Text(
         "Benjamin",
          style: Theme.of(context).textTheme.titleLarge!.copyWith(fontSize: 18),
        ),
        centerTitle: false,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            hSpacingMedium,
            Padding(
                padding: sPadding,
                child: Obx(
                  () => MasonryGridView.builder(
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 10,
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemCount:5,
                      gridDelegate:
                          SliverSimpleGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2),
                      itemBuilder: (context, index) {

                        return  Container(height: 70,width: 70,color: Colors.blue,);
                      }),
                ))
          ],
        ),
      ),
    );
  }
}
