import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../core/constants/constant_text_styles.dart';

class CloudButtons extends StatelessWidget {
  final String text;
  final Function() onFaceBookPressed, onGooglePressed, onApplePressed;

  const CloudButtons({
    super.key,
    required this.text,
    required this.onFaceBookPressed,
    required this.onGooglePressed,
    required this.onApplePressed,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(text, style: ConstTextStyles.afterButton),
        SizedBox(
          height: 1.h,
        ),
        SizedBox(
          height: 7.h,
          width: 70.w,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InkWell(
                onTap: onFaceBookPressed,
                child: CircleAvatar(
                  radius: 10.w,
                  backgroundImage:
                      const AssetImage('assets/images/facebook.png'),
                ),
              ),
              InkWell(
                onTap: onGooglePressed,
                child: CircleAvatar(
                  radius: 9.w,
                  backgroundColor: Colors.blueAccent,
                  backgroundImage: const AssetImage('assets/images/google.png'),
                ),
              ),
              InkWell(
                onTap: onApplePressed,
                child: CircleAvatar(
                  radius: 7.w,
                  backgroundImage: const AssetImage('assets/images/aaapple.png'),
                  backgroundColor: Colors.blueAccent,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
