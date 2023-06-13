import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import 'MyText.dart';

class EventDetails_Container extends StatelessWidget {
  final String text1;
  final String text2;
  final String text3;
  final String text4;
  final String text5;
  final String text6;

  EventDetails_Container({
    this.text1 = "",
    this.text2 = "",
    this.text3 = "",
    this.text4 = "",
    this.text5 = "",
    this.text6 = "",
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 375.w,
      height: 167.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(7),
        gradient: LinearGradient(
          // begin: ,
          colors: [Color.fromRGBO(49, 16, 211, 0.32), Color.fromRGBO(195, 49, 166, 0.25),],
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(width: 100, height: 100 ,child: SvgPicture.asset("assets/images/cartoon.svg",),),
          Container(
            // width: 164.w,
            height: 212.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            gradient: LinearGradient(
              begin: Alignment.bottomRight,
              end: Alignment.bottomLeft,
              stops: [0.0,  0.9,],
              colors: [Color.fromRGBO(49, 16, 211, 0.65), Color.fromRGBO(195, 49, 166, 0.25),],
            ),
          ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  SizedBox(height: 10,),
                  MyText(
                    text: text1.toString(),
                    fontSize: 18,
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                  ),
                  MyText(
                    text: text2.toString(),
                    fontSize: 12,
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                  ),
                  SizedBox(height: 15,),
                  MyText(
                    text: text3.toString(),
                    fontSize: 12,
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                  ),
                  MyText(
                    text: text4.toString(),
                    fontSize: 12,
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                  ),
                  SizedBox(height: 15,),
                  MyText(
                    text: text5.toString(),
                    fontSize: 12,
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                  ),
                  MyText(
                    text: text6.toString(),
                    fontSize: 12,
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}