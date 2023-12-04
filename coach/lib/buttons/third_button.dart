import 'package:coach/pages/home_page.dart';
import 'package:coach/pages/login_signup/signup_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class buttons extends StatelessWidget {
  final String text;
  var page;
  buttons({super.key, required this.text, required this.page});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50.h,
      width: 280.w,
      child: ElevatedButton(
        style: ButtonStyle(
            shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0)))),
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => page));
        },
        child: Text(
          text,
          style: GoogleFonts.inter(fontSize: 18.0, fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
}
