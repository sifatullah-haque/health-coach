import 'package:coach/buttons/my_button.dart';
import 'package:coach/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class VarificationPage extends StatelessWidget {
  const VarificationPage({super.key});

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
              SizedBox(
                height: 40.0,
              ),

              Text(
                "A verification email has been sent to your mail ",
                style: GoogleFonts.inter(
                    fontSize: 18.0, color: use.inversePrimary),
              ),
              SizedBox(
                height: 40.0,
              ),
              buttons(
                text: "Varified",
                page: HomePage(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
