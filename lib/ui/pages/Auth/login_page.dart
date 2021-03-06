import 'package:flutter/material.dart';
import 'package:instagram/sizeconfig.dart';
import 'package:instagram/ui/pages/Auth/signup_page.dart';
import 'package:instagram/ui/styles/colors.dart';
import 'package:instagram/ui/styles/textstyles.dart';
import 'package:instagram/ui/widgets/auth_button.dart';
import 'package:instagram/ui/widgets/input_field.dart';
import 'package:get/get.dart';

class LoginPage extends StatelessWidget {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const SizedBox(
            height: 20,
          ),
          Column(
            children: [
              Image.asset(
                "assets/images/insta_logo.png",
                height: getProportionateScreenWidth(60),
                color: Colors.black,
              ),
              const SizedBox(
                height: 30,
              ),
              InputField(
                controller: _emailController,
                hint: "Email",
              ),
              const SizedBox(
                height: 8,
              ),
              InputField(
                controller: _passwordController,
                hint: "Password",
              ),
              const SizedBox(
                height: 16,
              ),
              AuthButton(
                btnClr: primaryColor,
                label: "Log In",
                onTap: () {},
              ),
              _divider(),
              AuthButton(
                btnClr: primaryColor,
                label: "Log in with Facebook",
                onTap: () {},
              ),
            ],
          ),
          Container(
            margin: const EdgeInsets.only(bottom: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Don't have an account? "),
                GestureDetector(
                  onTap: () {
                    Get.to(SignupPage());
                  },
                  child: Text(
                    "Sign up",
                    style: impBodyTextStyle.copyWith(color: primaryColor),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  _divider() {
    return Row(
      children: [
        const SizedBox(
          width: 20,
        ),
        const Expanded(
          child: Divider(
            height: 60,
            color: Colors.grey,
          ),
        ),
        const SizedBox(
          width: 20,
        ),
        Text(
          "OR",
          style: captionTextStyle,
        ),
        const SizedBox(
          width: 20,
        ),
        const Expanded(
            child: Divider(
          color: Colors.grey,
          height: 60,
        )),
        const SizedBox(
          width: 20,
        ),
      ],
    );
  }
}
