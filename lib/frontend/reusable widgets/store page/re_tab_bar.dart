import 'package:flutter/material.dart';

import '../../constants/colors.dart';

class ReTabBar extends StatelessWidget implements PreferredSizeWidget {
  const ReTabBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).scaffoldBackgroundColor,
      child: TabBar(
          labelStyle: Theme.of(context)
              .textTheme
              .titleLarge!
              .copyWith(fontWeight: FontWeight.w500),
          indicatorColor: Theme.of(context).colorScheme.primary,
          tabAlignment: TabAlignment.start,
          isScrollable: true,
          labelColor: Theme.of(context).colorScheme.primary,
          unselectedLabelColor: dGrey,
          dividerHeight: 0.5,
          tabs: [
            Tab(
              child: Text("Sports"),
            ),
            Tab(
              child: Text("Electronics"),
            ),
            Tab(
              child: Text("Games"),
            ),
            Tab(
              child: Text("Clothing"),
            ),
            Tab(
              child: Text("Babies"),
            )
          ]),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(20);
}
