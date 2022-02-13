import 'package:flutter/material.dart';
import 'package:flutter_application_1/utilis/colors.dart';
import 'package:flutter_application_1/widgets/text_input_form.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  final TextEditingController _bioController = TextEditingController();
  final TextEditingController _usernameController = TextEditingController();

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _bioController.dispose();
    _usernameController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 32),
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            //Logo of app
            Flexible(
              child: Container(),
              flex: 2,
            ),
            SvgPicture.asset(
              'assets/logo.svg',
              color: Colors.blue,
              height: 150,
            ),
            // SizedBox(
            //   height: 64,
            // ),
            //***********************************************************Circular Image avatar */
            Stack(
              children: [
                CircleAvatar(
                  radius: 64,
                  backgroundColor: Colors.blue,
                ),
                Positioned(
                    bottom: -10,
                    left: 75,
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.add_a_photo,
                        size: 34,
                      ),
                    ))
              ],
            ),
            SizedBox(
              height: 24,
            ),
            //username
            TextFieldInput(
                textEditingController: _usernameController,
                textInputType: TextInputType.text,
                hintText: 'Enter your username'),
            const SizedBox(
              height: 24,
            ),
            //Email validation
            TextFieldInput(
                textEditingController: _emailController,
                textInputType: TextInputType.emailAddress,
                hintText: 'Enter your email'),
            const SizedBox(
              height: 24,
            ),
            //Password Validation
            TextFieldInput(
              textEditingController: _passwordController,
              textInputType: TextInputType.text,
              hintText: 'Enter your password',
              isPass: true,
            ),

            const SizedBox(
              height: 24,
            ),
            TextFieldInput(
                textEditingController: _bioController,
                textInputType: TextInputType.text,
                hintText: 'Enter your bio'),
            const SizedBox(
              height: 24,
            ),
            //submit button
            GestureDetector(
              onTap: () {},
              child: Container(
                alignment: Alignment.center,
                width: double.infinity,
                padding: const EdgeInsets.symmetric(vertical: 12),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4), color: blueColor),
                child: const Text('Log in'),
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            Flexible(
              child: Container(),
              flex: 2,
            ),
            //Sign up button
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: const Text("Don't have an account"),
                  padding: const EdgeInsets.symmetric(vertical: 12),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    child: const Text("Sign up",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        )),
                    padding: const EdgeInsets.symmetric(vertical: 12),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    ));
  }
}
