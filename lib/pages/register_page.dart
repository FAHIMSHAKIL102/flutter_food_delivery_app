import 'package:flutter/material.dart';
import 'package:flutter_food_delivery_app/components/my_button.dart';
import 'package:flutter_food_delivery_app/components/my_textformfield.dart';

class RegisterPage extends StatefulWidget {
  final Function()? onTap;
  const RegisterPage({super.key, this.onTap});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  
  final TextEditingController emailController = TextEditingController();

  final TextEditingController passwordController = TextEditingController();

  final TextEditingController confirmPasswordController = TextEditingController();
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
              size: 100,
              color: Theme.of(context).colorScheme.inversePrimary,
            ),

            SizedBox(height: 25),
            // message,app slogan
            Text(
              "Let's create an account for you",
              style: TextStyle(
                fontSize: 16,
                color: Theme.of(context).colorScheme.inversePrimary,
              ),
            ),
            SizedBox(height: 25),
            // email textfieild
            MyTextformfield(
              controller: emailController,
              hintText: 'Email',
              obscureText: false,
            ),

            SizedBox(height: 10),
            // password textfield
            MyTextformfield(
              controller: passwordController,
              hintText: 'Password',
              obscureText: true,
            ),

            SizedBox(height: 10),

            // confirm password textfield
            MyTextformfield(
              controller: confirmPasswordController,
              hintText: 'Confirm Password',
              obscureText: true,
            ),

            SizedBox(height: 25),
            // sign up button
            MyButton(text: 'Sign Up', onTap: () {}),

            SizedBox(height: 25),
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
                SizedBox(width: 4),
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