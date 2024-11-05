import 'package:flutter/material.dart';
import 'package:flutter_gaya_2/utils/hex_color.dart';

// 使用示例
Color colobackground = HexColor('#2B39B9'); // 使用自定义 HexColor 类

class SplashPage1 extends StatelessWidget {
  const SplashPage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: colobackground,
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
              child: Container(
            child: Image.asset(
              'assets/images/icon/appicon.png',
              width: 95,
              height: 95,
            ),
          )),

          // 确保路径正确
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("assets/images/splash/Gaya.png",
                  width: 127, height: 21),
              const Text(
                'Fashion Store App',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
              const Text(
                'v1.0.0',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
          const SizedBox(height: 100),
        ],
      ),
    );
  }
}
