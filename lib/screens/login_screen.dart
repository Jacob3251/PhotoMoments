import 'package:flutter/material.dart';
import 'package:flutter_application_1/resources/auth_methods.dart';
import 'package:flutter_application_1/utilis/colors.dart';
import 'package:flutter_application_1/utilis/utils.dart';
import 'package:flutter_application_1/widgets/text_input_form.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _emailController.dispose();
    _passwordController.dispose();
  }

  void loginUser() async {
    String res = await AuthMethods().loginUser(
        email: _emailController.text, password: _passwordController.text);

    if (res == 'success') {
      //Nothing for now
    } else {
      showSnackBar(res, context);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 32),
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
            //Email validation
            TextFieldInput(
                textEditingController: _emailController,
                textInputType: TextInputType.emailAddress,
                hintText: 'Enter your email'),
            SizedBox(
              height: 24,
            ),
            //Password Validation
            TextFieldInput(
              textEditingController: _passwordController,
              textInputType: TextInputType.text,
              hintText: 'Enter your password',
              isPass: true,
            ),

            SizedBox(
              height: 24,
            ),
            //submit button
            GestureDetector(
              onTap: loginUser,
              child: Container(
                alignment: Alignment.center,
                width: double.infinity,
                padding: EdgeInsets.symmetric(vertical: 12),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4), color: blueColor),
                child: Text('Log in'),
              ),
            ),
            SizedBox(
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
                  child: Text("Don't have an account"),
                  padding: const EdgeInsets.symmetric(vertical: 12),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    child: Text("Sign up",
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
