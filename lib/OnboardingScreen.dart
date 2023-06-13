import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:leaguespots/constants/colors.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

int selectedBox = -1;

class _OnboardingScreenState extends State<OnboardingScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                width: 172.w,
                height: 152.h,
                child: SvgPicture.asset('assets/images/logo.svg'),
              ),
              SizedBox(
                height: 67.h,
              ),
              Text(
                'Have fun and earn\n from Games',
                textAlign: TextAlign.center,
                style: GoogleFonts.nunito(
                  fontSize: 36.sp,
                  fontWeight: FontWeight.w800,
                  color: black,
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Text(
                'Create content, hosts events or simply\n be a player and earn from your interest',
                textAlign: TextAlign.center,
                style: GoogleFonts.nunito(
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w400,
                  color: grey,
                ),
              ),
              Spacer(),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20.0,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 150.w,
                        height: 58.h,
                        decoration: BoxDecoration(
                          border: selectedBox == 1
                              ? null
                              : Border.all(
                                  color: black,
                                  width: 1.sp,
                                ),
                          borderRadius: BorderRadius.circular(
                            5.r,
                          ),
                          gradient: selectedBox == 1 ? gradient : null,
                        ),
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              selectedBox = 1;
                              // Navigator.of(context).push(
                              //   MaterialPageRoute(
                              //     builder: (context) => SignUpScreen(),
                              //   ),
                              // );
                            });
                          },
                          child: Center(
                            child: Text(
                              'Sign up',
                              textAlign: TextAlign.center,
                              style: GoogleFonts.nunito(
                                fontSize: 18.sp,
                                fontWeight: FontWeight.w400,
                                color: selectedBox == 1 ? white : black,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: 150.w,
                        height: 58.h,
                        decoration: BoxDecoration(
                          border: selectedBox == 2
                              ? null
                              : Border.all(
                                  color: black,
                                  width: 1.sp,
                                ),
                          borderRadius: BorderRadius.circular(
                            5.r,
                          ),
                          gradient: selectedBox == 2 ? gradient : null,
                        ),
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              selectedBox = 2;
                              // Navigator.of(context).push(
                              //   MaterialPageRoute(
                              //     builder: (context) => SignUpScreen(),
                              //   ),
                              // );
                            });
                          },
                          child: Center(
                            child: Text(
                              'Login',
                              textAlign: TextAlign.center,
                              style: GoogleFonts.nunito(
                                fontSize: 18.sp,
                                fontWeight: FontWeight.w400,
                                color: selectedBox == 2 ? white : black,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
