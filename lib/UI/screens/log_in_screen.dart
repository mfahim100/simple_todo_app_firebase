import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:simple_todo_app_firebase/UI/widgets/cloud_buttons.dart';
import 'package:simple_todo_app_firebase/UI/widgets/custom_button.dart';
import 'package:simple_todo_app_firebase/UI/widgets/sign_in_screen_textfield.dart';
import 'package:simple_todo_app_firebase/core/constants/constant_container_styles.dart';

import '../../core/constants/constant_text_styles.dart';

class LogInScreen extends StatelessWidget {
  const LogInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            width: 100.w,
            height: 100.h,
            color: Colors.black,
            child: Column(
              children: [
                SizedBox(
                  width: 100.w,
                  height: 43.h,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 35.h,
                        child: const Image(
                          fit: BoxFit.fill,
                          image: AssetImage('assets/images/login-removebg.png'),
                        ),
                      ),
                      SizedBox(
                        height: .5.h,
                      ),
                      Text('Fahim Ansaar App Developer',
                          style: ConstTextStyles.logInScreenTitle),
                      SizedBox(
                        height: .5.h,
                      ),
                      Text('Connect Us to Improve Your Business',
                          style: ConstTextStyles.logInScreenText),
                    ],
                  ),
                ),
                SizedBox(
                  height: 1.h,
                ),
                SingleChildScrollView(
                  child: Container(
                    width: 100.w,
                    height: 55.h,
                    decoration: ConstContainerStyles.loginContainerStyle,
                    child: Form(
                      child: Column(
                        children: [
                          SizedBox(
                            height: 2.h,
                          ),
                          SignInScreenTextField(
                            prefixIcon: const Icon(Icons.person),
                            hintText: 'Enter Your Email',
                            labelText: 'Enter Your Email',
                          ),
                          SizedBox(
                            height: 1.h,
                          ),
                          SignInScreenTextField(
                            obscureText: true,
                            prefixIcon: const Icon(Icons.lock),
                            hintText: 'Enter Your Password',
                            labelText: 'Password',
                          ),
                          SizedBox(
                            height: 2.h,
                          ),
                          CustomButton(text: 'Sign In', onPressed: () {}),
                          SizedBox(
                            height: 3.h,
                          ),
                          CloudButtons(
                            text: 'Sign in Using',
                            onFaceBookPressed: () {},
                            onGooglePressed: () {},
                            onApplePressed: () {},
                          ),

                          SizedBox(height: 2.h,),





                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
