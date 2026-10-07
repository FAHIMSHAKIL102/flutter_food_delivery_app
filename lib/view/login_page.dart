import 'package:flutter/material.dart';
import 'package:flutter_food_delivery_app/components/my_button.dart';
import 'package:flutter_food_delivery_app/components/my_textformfield.dart';
import 'package:flutter_food_delivery_app/services/auth/auth_service.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginPage extends StatefulWidget {
  final Function()? onTap;
  const LoginPage({super.key, required this.onTap});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController emailController = TextEditingController();

  final TextEditingController passwordController = TextEditingController();
  void login() async {
    final authService = AuthService();

    try {
      await authService.signInWithEmailPassword(
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
              'Food Delivery App',
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

            SizedBox(height: 25.h),

            // sign in button
            MyButton(text: 'Sign In', onTap: login),

            SizedBox(height: 25.h),
            // not a member? register now
            Row(
              mainAxisAlignment: .center,
              children: [
                Text(
                  'Not a member',
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.inversePrimary,
                  ),
                ),
                SizedBox(width: 4.w),
                GestureDetector(
                  onTap: widget.onTap,
                  child: Text(
                    'Register Now',
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
