import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../core/constants/constant_text_styles.dart';

class LastTextButton extends StatelessWidget {
  final String text, buttonText;
  final Function() onPressed;

  const LastTextButton({
    super.key,
    required this.text,
    required this.buttonText,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 80.w,
      child: Row(
        children: [
          Text(text, style: ConstTextStyles.lastTextButton),
          TextButton(
              onPressed: onPressed,
              child: Text(buttonText, style: ConstTextStyles.lastTextButton))
        ],
      ),
    );
  }
}
