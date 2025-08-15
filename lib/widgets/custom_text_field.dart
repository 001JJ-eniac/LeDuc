import 'package:flutter/material.dart';
import '../style/app_styles.dart';

class CustomTextField extends StatelessWidget {
  final String label;
  final String placeholder;
  final TextEditingController controller;
  final bool obscureText;
  final Widget? helperWidget;

  const CustomTextField({
    super.key,
    required this.label,
    required this.placeholder,
    required this.controller,
    this.obscureText = false,
    this.helperWidget,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label, style: AppStyles.labelStyle),
        const SizedBox(height: AppStyles.smallSpacing),
        TextField(
          controller: controller,
          obscureText: obscureText,
          decoration: AppStyles.getInputDecoration(placeholder),
        ),
        if (helperWidget != null) ...[
          const SizedBox(height: AppStyles.smallSpacing),
          helperWidget!,
        ],
      ],
    );
  }
}