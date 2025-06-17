import 'package:flutter/material.dart';

class ReListTile extends StatelessWidget {
  const ReListTile({
    super.key,
    this.leading = const SizedBox(),
    this.title = const SizedBox(),
    this.trailing = const SizedBox(),
    this.subtitle = const SizedBox(),
    this.titleString = "",
    this.subTitleString = "",
    this.color = Colors.transparent,
    this.showTrailing = true,
    this.fontSize = 16,
    this.onTap,
  });
  final Widget leading;
  final Widget title;
  final Widget trailing;
  final Widget subtitle;
  final double fontSize;
  final String titleString;
  final String subTitleString;
  final Color color;
  final bool showTrailing;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
        onTap: onTap,
        leading: leading,
        title: Text(
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          titleString,
          style: Theme.of(context).textTheme.headlineMedium!.copyWith(
              color: color, fontSize: fontSize, fontWeight: FontWeight.bold),
        ),
        subtitle: Text(
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          subTitleString,
          style: Theme.of(context).textTheme.bodyMedium!.copyWith(
              fontSize: 13,
              color: color.withOpacity(0.7),
              fontFamily: "Poppins",
              fontWeight: FontWeight.w500),
        ),
        trailing: showTrailing ? trailing : SizedBox());
  }
}
