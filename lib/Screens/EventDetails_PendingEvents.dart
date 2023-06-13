import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:leaguespots/Utills/Utills.dart';

import '../Utills/EventDetails_Conatiner.dart';
import '../Utills/MyText.dart';

class PendingEvents extends StatelessWidget {
  const PendingEvents({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: Utils.customAppBar("assets/images/arrow_back.svg", "assets/images/share.svg"),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: const MyText(
              text: "Pending Event",
              color: Colors.black,
              fontSize: 18,
              fontWeight: FontWeight.w700,
            ),
          ),
          EventDetails_Container(
            text1: "Battle Royale Deluxe",
            text2: "Crowning of a champion",
            text3: "12th - 15th feb, 2021",
            text4: "9am - 6pm daily",
            text5: "Host",
            text6: "Hakeem Lawal",
          ),
          Row(
            children: [
              const MyText(
                text: "Attending",
                color: Colors.black,
                fontSize: 12,
                fontWeight: FontWeight.w700,
              ),
               Container(
                 width: 70,
                 child: Stack(
                   children: [
                     CircleAvatar(
                       radius: 15,
                       backgroundColor: Colors.brown,
                       child: SvgPicture.asset(
                         'assets/images/image1.svg',
                       ),
                     ),
                     Positioned(
                       left: 7,
                       child: CircleAvatar(
                         radius: 15,
                         backgroundColor: Colors.blueAccent,
                         child: SvgPicture.asset(
                           'assets/images/image1.svg',
                         ),
                       ),
                     ),
                     Positioned(
                       left: 15,
                       child: CircleAvatar(
                         radius: 15,
                         backgroundColor: Colors.red,
                         child: SvgPicture.asset(
                           'assets/images/image1.svg',
                         ),
                       ),
                     ),
                     Positioned(
                       left: 25,
                       child: CircleAvatar(
                         radius: 15,
                         backgroundColor: Colors.greenAccent,
                         child: SvgPicture.asset(
                           'assets/images/image1.svg',
                         ),
                       ),
                     ),
                   ],
                 ),
               ),
               MyText(
                text: "+ 50",
                color: Color(0xff767474),
                fontSize: 12,
                fontWeight: FontWeight.w400,
              ),
            ],
          )
        ],
      ),
    );
  }
}
