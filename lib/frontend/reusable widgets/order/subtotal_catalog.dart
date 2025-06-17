import 'package:flutter/material.dart';

class SubTotalCatalog extends StatelessWidget {
  const SubTotalCatalog(
      {super.key,
      required this.text1,
      required this.text2,
      this.changeStyle = false,
      this.style});
  final String text1;
  final String text2;
  final bool changeStyle;
  final TextStyle? style;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(flex: 7,
          child: Text(text1,overflow: TextOverflow.ellipsis,maxLines: 1,
              style:
                  changeStyle ? style : Theme.of(context).textTheme.titleLarge),
        ),
        Expanded(flex: 3,
          child: Text(text2,textAlign: TextAlign.end,overflow: TextOverflow.ellipsis,maxLines: 1,
              style: changeStyle ? style : Theme.of(context).textTheme.titleLarge),
        )
      ],
    );
  }
}
