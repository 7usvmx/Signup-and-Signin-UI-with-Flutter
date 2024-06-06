// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:loginui/constants/constants.dart';
import 'package:loginui/pages/signup.dart';
import 'package:loginui/utilities/button.dart';
import 'package:loginui/utilities/text.form.dart';

class Signin extends StatefulWidget {
  const Signin({super.key});

  @override
  State<Signin> createState() => _SignupState();
}

class _SignupState extends State<Signin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: SizedBox(
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.all(18.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  //! Logo
                  sizedH40,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "HU",
                        style: TextStyle(
                          color: mainColor,
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        " DEV.",
                        style: TextStyle(
                          color: logoColor,
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  sizedH40,
                  // Container(
                  //   alignment: Alignment.centerLeft,
                  //   child: Text(
                  //     "Signup with us!",
                  //     style: TextStyle(
                  //       color: textColor,
                  //       fontSize: 20,
                  //     ),
                  //   ),
                  // ),
                  sizedH40,
                  //! Signup Form
                  Form(
                    child: Padding(
                      padding: const EdgeInsets.all(28.0),
                      child: Column(
                        children: [
                          CustomTextForm(
                            label: "Email Address",
                            prefixIcon: Icon(Icons.email_outlined),
                            isPassword: false,
                            inputType: TextInputType.emailAddress,
                            controller: null,
                          ),
                          CustomTextForm(
                            label: "Password",
                            prefixIcon: Icon(Icons.lock_outline),
                            suffixIcon: IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.visibility_outlined),
                            ),
                            isPassword: true,
                            inputType: TextInputType.text,
                            controller: null,
                          ),
                          //! Don't Have an account ?
                          Container(
                            margin: EdgeInsets.only(bottom: 22),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Don't Have an account ?"),
                                TextButton(
                                  onPressed: () {
                                    Get.to(Signup());
                                  },
                                  style: ButtonStyle(
                                    fixedSize: WidgetStatePropertyAll(
                                      Size(double.infinity, 10),
                                    ),
                                    padding: WidgetStatePropertyAll(
                                      EdgeInsets.all(0),
                                    ),
                                  ),
                                  child: Text(
                                    "sign up ",
                                    style: TextStyle(color: Colors.black87),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          //! Signup button
                          Submit(
                            text: "Signin",
                            isLoading: false,
                            onPressed: () {},
                          ),
                          sizedH40,
                          Text("- OR sign in with -"),
                          sizedH40,
                          //! Sign up with
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              GestureDetector(
                                onTap: () {},
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: mainColor.withOpacity(0.5),
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  padding: EdgeInsets.all(20),
                                  child: SvgPicture.asset(
                                    "assets/svg/g.svg",
                                    color: textWhite,
                                    height: 30,
                                  ),
                                ),
                              ),
                              GestureDetector(
                                onTap: () {},
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: mainColor.withOpacity(0.5),
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  padding: EdgeInsets.all(20),
                                  child: SvgPicture.asset(
                                    "assets/svg/f.svg",
                                    color: textWhite,
                                    height: 30,
                                  ),
                                ),
                              ),
                              GestureDetector(
                                onTap: () {},
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: mainColor.withOpacity(0.5),
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  padding: EdgeInsets.all(20),
                                  child: SvgPicture.asset(
                                    "assets/svg/t.svg",
                                    color: textWhite,
                                    height: 30,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
