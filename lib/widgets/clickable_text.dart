import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import '../style/app_styles.dart';

class ClickableText extends StatelessWidget {
  final String normalText;
  final String linkText;
  final VoidCallback onLinkTap;
  final TextAlign? textAlign;

  const ClickableText({
    super.key,
    required this.normalText,
    required this.linkText,
    required this.onLinkTap,
    this.textAlign,
  });

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: textAlign ?? TextAlign.start,
      text: TextSpan(
        style: AppStyles.infoTextStyle,
        children: [
          TextSpan(text: normalText),
          TextSpan(
            text: linkText,
            style: AppStyles.linkStyle,
            recognizer: TapGestureRecognizer()..onTap = onLinkTap,
          ),
        ],
      ),
    );
  }
}