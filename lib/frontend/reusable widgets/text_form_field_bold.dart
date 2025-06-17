import 'package:flutter/material.dart';

import '../constants/spacing.dart';

class TextFormWidget extends StatelessWidget {
  const TextFormWidget({
    super.key,
    required this.icon,
    required this.labelText,
    this.controller,
    this.validator,
  });
  final IconData icon;
  final FormFieldValidator<String>? validator;
  final String labelText;
  final TextEditingController? controller;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: validator,
      controller: controller,
      style: Theme.of(context).textTheme.headlineSmall,
      decoration: InputDecoration(
          prefixIcon: Icon(icon, color: Theme.of(context).colorScheme.primary),
          labelText: labelText,
          labelStyle: Theme.of(context).textTheme.headlineSmall,
          // hintText: "E-Mail",
          // hintStyle: Theme.of(context).textTheme.titleSmall,
          border: OutlineInputBorder(borderRadius: cBorderRadius)),
    );
  }
}
