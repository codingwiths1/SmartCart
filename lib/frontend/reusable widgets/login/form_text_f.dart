import 'package:flutter/material.dart';

import '../../constants/spacing.dart';

class FormTextF extends StatelessWidget {
  const FormTextF({
    super.key,
    this.text = "",
    this.prefixIcon = const SizedBox(),
    this.validator,   this.controller,
  });
  final String text;
  final Widget prefixIcon;
  final String? Function(String?)? validator;
  final TextEditingController? controller;
  @override
  Widget build(BuildContext context) {
    return TextFormField(controller: controller,
      validator: validator,
      style: Theme.of(context).textTheme.headlineSmall,
      decoration: InputDecoration(
          prefixIcon: prefixIcon,
          labelText: text,
          labelStyle: Theme.of(context).textTheme.titleSmall,
          hintStyle: Theme.of(context).textTheme.titleSmall,
          border: OutlineInputBorder(borderRadius: cBorderRadius)),
    );
  }
}
