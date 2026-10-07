import 'package:flutter/material.dart';
import 'package:flutter_food_delivery_app/components/my_button.dart';
import 'package:flutter_food_delivery_app/components/my_textformfield.dart';
import 'package:flutter_food_delivery_app/services/auth/auth_service.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RegisterPage extends StatefulWidget {
  final Function()? onTap;
  const RegisterPage({super.key, this.onTap});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();

  // register method
  void register() async {
    // get auth service
    final authService = AuthService();

    // check if password match -> create user
    if (passwordController.text == confirmPasswordController.text) {
      try {
        await authService.signUpWithEmailPassword(
          emailController.text,
          passwordController.text,
        );
      } catch (e) {
        showDialog(
          context: context,
          builder: (context) => AlertDialog(title: Text(e.toString())),
        );
      }
    }
    // if password don't match -> show error
    else {
      showDialog(
        context: context,
        builder: (context) => AlertDialog(title: Text("Password don't match")),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: Center(
        child: Column(
          mainAxisAlignment: .center,
          children: [
            // logo
            Icon(
              Icons.lock_open_rounded,
              size: 100.r,
              color: Theme.of(context).colorScheme.inversePrimary,
            ),

            SizedBox(height: 25.h),
            // message,app slogan
            Text(
              "Let's create an account for you",
              style: TextStyle(
                fontSize: 16.sp,
                color: Theme.of(context).colorScheme.inversePrimary,
              ),
            ),
            SizedBox(height: 25.h),
            // email textfieild
            MyTextformfield(
              controller: emailController,
              hintText: 'Email',
              obscureText: false,
            ),

            SizedBox(height: 10.h),
            // password textfield
            MyTextformfield(
              controller: passwordController,
              hintText: 'Password',
              obscureText: true,
            ),

            SizedBox(height: 10.h),

            // confirm password textfield
            MyTextformfield(
              controller: confirmPasswordController,
              hintText: 'Confirm Password',
              obscureText: true,
            ),

            SizedBox(height: 25.h),
            // sign up button
            MyButton(text: 'Sign Up', onTap: register),

            SizedBox(height: 25.h),
            // already have an acccount? login here
            Row(
              mainAxisAlignment: .center,
              children: [
                Text(
                  'Already have an acccount',
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.inversePrimary,
                  ),
                ),
                SizedBox(width: 4.w),
                GestureDetector(
                  onTap: widget.onTap,
                  child: Text(
                    'Login Now',
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.inversePrimary,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
