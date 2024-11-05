import 'package:flutter/material.dart';
import 'package:flutter_gaya_2/utils/hex_color.dart';

Color colorText1 = HexColor('#0F0F0F');

class SplashPage2 extends StatelessWidget {
  const SplashPage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
              child: AspectRatio(
            aspectRatio: 375 / 494,
            child: Image.asset(
              'assets/images/splash/splashPeople.png', // 替换为您的图片 URL
              // 拉伸填充
              fit: BoxFit.cover,
            ),
          )),
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.only(left: 51, right: 51, top: 60),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Find out your style here",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: colorText1,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  const Text(
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor ",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Color.fromRGBO(0, 0, 0, 0.7),
                          fontSize: 14,
                          fontWeight: FontWeight.bold)),
                  Image.asset('assets/images/splash/btnNext.png',
                      width: 127, height: 127)
                ],
              ),
            ),
          )
        ],
      ),

      // width: double.infinity,
      // height: double.infinity,
    );
  }
}
