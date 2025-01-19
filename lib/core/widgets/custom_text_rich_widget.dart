import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class CustomRichText extends StatelessWidget {
  final String? text1;
  final TextStyle? textStyle1;
  final VoidCallback? onTap1;

  final String? text2;
  final TextStyle? textStyle2;
  final VoidCallback? onTap2;

  final TextAlign textAlign;
  final TextOverflow textOverflow;
  final int? maxLines;

  const CustomRichText({
    super.key,
    this.text1,
    this.textStyle1,
    this.onTap1,
    this.text2,
    this.textStyle2,
    this.onTap2,
    this.textAlign = TextAlign.start,
    this.textOverflow = TextOverflow.clip,
    this.maxLines,
  });

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: textAlign,
      overflow: textOverflow,
      maxLines: maxLines,
      text: TextSpan(
        children: [
          if (text1 != null)
            TextSpan(
              text: text1,
              style: textStyle1 ?? DefaultTextStyle.of(context).style,
              recognizer: onTap1 != null
                  ? (TapGestureRecognizer()..onTap = onTap1)
                  : null,
            ),
          if (text2 != null)
            TextSpan(
              text: text2,
              style: textStyle2 ?? DefaultTextStyle.of(context).style,
              recognizer: onTap2 != null
                  ? (TapGestureRecognizer()..onTap = onTap2)
                  : null,
            ),
        ],
      ),
    );
  }
}
