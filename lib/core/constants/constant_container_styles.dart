import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class ConstContainerStyles{

  static var loginContainerStyle = BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.only(
      topLeft: Radius.circular(10.w),
      topRight: Radius.circular(10.w),
    ),
  );

}