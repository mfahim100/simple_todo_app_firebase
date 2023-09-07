import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../core/constants/constant_text_styles.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final Function() onPressed;
  const CustomButton({super.key, required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return  InkWell(
      onTap: onPressed,
      child: Container(
        height: 6.5.h,
        width: 90.w,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(3.5.w),
            gradient: const LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.topLeft,
                colors: [
                  Colors.deepPurpleAccent,
                  Colors.purpleAccent,
                  Colors.purple,
                  Colors.deepPurpleAccent,
                ]
            )
        ),
        child: Center(child: Text(text,style: ConstTextStyles.buttonTextStyle,)),
      ),
    );
  }
}
