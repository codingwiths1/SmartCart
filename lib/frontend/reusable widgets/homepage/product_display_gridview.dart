import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';

import '../../constants/spacing.dart';

class ProductDisplayGridview extends StatelessWidget {
  const ProductDisplayGridview({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: sPadding,
        child: Obx(
          () => MasonryGridView.builder(
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: 4,
              gridDelegate: SliverSimpleGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2),
              itemBuilder: (context, index) {
                return Container(height: 70,width: 70,color: Colors.blue,);
              }),
        ));
  }
}
