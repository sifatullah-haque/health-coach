import 'package:coach/buttons/inner_button.dart';
import 'package:coach/buttons/my_button.dart';
import 'package:coach/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorDetails extends StatelessWidget {
  const DoctorDetails({super.key});

  @override
  Widget build(BuildContext context) {
    final use = Theme.of(context).colorScheme;
    return SafeArea(
      child: Scaffold(
        backgroundColor: use.background,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                "assets/doctor/doctor_image_designation.png",
                height: 255.h,
                width: 253.w,
              ),
              SizedBox(
                height: 25.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //first button
                  ElevatedButton(
                    onPressed: () {},
                    child: Text("Details"),
                  ),
                  SizedBox(
                    width: 8.w,
                  ),
                  //second button
                  ElevatedButton(
                    onPressed: () {},
                    child: Text("Review"),
                  ),
                  SizedBox(
                    width: 8.w,
                  ),
                  //third button
                  ElevatedButton(
                    onPressed: () {},
                    child: Text("Blog"),
                  ),
                  SizedBox(
                    width: 8.w,
                  ),
                  //fourth button
                  ElevatedButton(
                    onPressed: () {},
                    child: Text("More"),
                  ),
                  SizedBox(
                    width: 8.w,
                  ),
                ],
              ),
              SizedBox(
                height: 25.h,
              ),
              Image.asset(
                "assets/doctor/price_details.png",
                height: 413.h,
                width: 375.w,
              ),
              SizedBox(
                height: 25.h,
              ),
              Align(
                alignment: Alignment.center,
                child: InnerButton(
                    text: "Talk with doctor",
                    page: HomePage(),
                    height: 50.h,
                    width: 220.w),
              )
            ],
          ),
        ),
      ),
    );
  }
}
