import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:simple_todo_app_firebase/UI/screens/log_in_screen.dart';

import '../../core/constants/constant_container_styles.dart';
import '../../core/constants/constant_text_styles.dart';
import '../widgets/cloud_buttons.dart';
import '../widgets/custom_button.dart';
import '../widgets/last_text_button.dart';
import '../widgets/sign_in_screen_textfield.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

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
                  height: 1.h,
                ),
                SizedBox(
                  width: 100.w,
                  height: 35.h,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 25.h,
                        child: const Image(
                          fit: BoxFit.fill,
                          image:
                              AssetImage('assets/images/signup-removebg.png'),
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
                    height: 62.h,
                    decoration: ConstContainerStyles.loginContainerStyle,
                    child: Form(
                      child: Column(
                        children: [
                          SizedBox(
                            height: 2.h,
                          ),
                          SignInScreenTextField(
                            prefixIcon: const Icon(Icons.person),
                            hintText: 'Enter Your Name',
                            labelText: 'Enter Your Name',
                          ),
                          SizedBox(
                            height: 1.h,
                          ),
                          SignInScreenTextField(
                            prefixIcon: const Icon(Icons.email),
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
                          CustomButton(text: 'Sign Up', onPressed: () {}),
                          SizedBox(
                            height: 3.h,
                          ),
                          CloudButtons(
                            text: 'Sign Up Using',
                            onFaceBookPressed: () {},
                            onGooglePressed: () {},
                            onApplePressed: () {},
                          ),
                          SizedBox(
                            height: 2.h,
                          ),
                          LastTextButton(
                              text: 'Already have Account ?',
                              buttonText: 'Click To Login',
                              onPressed: () {
                                Navigator.of(context)
                                    .push(MaterialPageRoute(builder: (context) {
                                  return const LogInScreen();
                                }));
                              })
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
