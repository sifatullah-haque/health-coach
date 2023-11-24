import 'package:coach/buttons/my_button.dart';
import 'package:coach/pages/home_page.dart';
import 'package:coach/pages/login_signup/signup_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final use = Theme.of(context).colorScheme;
    return SafeArea(
      child: Scaffold(
          backgroundColor: use.background,
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              children: [
                const SizedBox(
                  height: 50.0,
                ),
                //logo and title
                Center(
                  child: Column(
                    children: [
                      Image.asset("assets/images/logo.png"),
                      Image.asset("assets/images/title.png"),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 25.0,
                ),
                //welcome back text
                Text("Welcome back!!!",
                    style: GoogleFonts.inter(
                        fontSize: 30.sp, fontWeight: FontWeight.w500)),

                //mobile number field
                const SizedBox(
                  height: 20.0,
                ),
                TextField(
                  decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.email),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.sp),
                        borderSide: BorderSide(color: use.inversePrimary),
                      ),
                      hintText: "Email address"),
                ),

                //password field
                const SizedBox(
                  height: 20.0,
                ),
                TextField(
                  decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.lock),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.sp),
                      borderSide: BorderSide(color: use.inversePrimary),
                    ),
                    hintText: "Password",
                    suffixIcon: const Icon(Icons.remove_red_eye),
                  ),
                ),

                //create an account + forgot password
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const SignUpPage()));
                        },
                        child: const Text("Create an account?")),
                    TextButton(
                        onPressed: () {},
                        child: const Text(
                          "Forgot Password?",
                          style: TextStyle(color: Colors.blue),
                        ))
                  ],
                ),

                //login button
                const SizedBox(
                  height: 25.0,
                ),
                buttons(
                  text: "Log in",
                  page: HomePage(),
                ),

                //or divider
                SizedBox(
                  height: 25.0,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Divider(
                        color: use.inversePrimary,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20.0),
                      child: Text(
                        "OR",
                        style: GoogleFonts.inter(
                            fontSize: 18.sp, fontWeight: FontWeight.w500),
                      ),
                    ),
                    Expanded(
                      child: Divider(
                        color: use.inversePrimary,
                      ),
                    ),
                  ],
                ),

                //login with google facebook
                SizedBox(
                  height: 25.0,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: 40.h,
                      backgroundColor: use.secondary,
                      child: Image.asset("assets/images/google.png"),
                    ),
                    SizedBox(
                      width: 15.0,
                    ),
                    CircleAvatar(
                      radius: 40.h,
                      backgroundColor: use.secondary,
                      child: Image.asset("assets/images/Facebook.png"),
                    ),
                  ],
                )
              ],
            ),
          )),
    );
  }
}
