import 'package:flutter/material.dart';
import 'package:flutter_gaya_2/routes.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class SplashPage3 extends StatelessWidget {
  const SplashPage3({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    const designHeight = 812;
    Size screenSize = MediaQuery.of(context).size;
    double imageWidth = screenSize.width * 75 / 375; // 375 是 iPhone XS Max 的宽度
    double imageHeight =
        screenSize.height * 75 / 812; // 812 是 iPhone XS Max 的高度
    double imageWidthLogo =
        screenSize.width * 115 / 375; // 375 是 iPhone XS Max 的宽度
    double imageHeightLogo =
        screenSize.height * 135 / 812; // 812 是 iPhone XS Max 的高度
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 29.0),
        child: Column(
          children: [
            SizedBox(
              height: screenHeight * 0.38,
              width: double.infinity,
              child: Stack(
                children: [
                  LayoutBuilder(builder: (context, constraints) {
                    double width = constraints.maxWidth;
                    double height = constraints.maxHeight;
                    return Stack(
                      children: [
                        Positioned(
                            left: width * 0.15,
                            top: height * 0.15,
                            child: Image.asset(
                              'assets/images/splash/shopIcon1.png',
                              width: imageWidth,
                              height: imageHeight,
                            )),
                        Positioned(
                            right: width * 0.1,
                            bottom: height * 0.3,
                            child: Image.asset(
                              'assets/images/splash/shopIcon2.png',
                              width: imageWidth,
                              height: imageHeight,
                            )),
                        Positioned(
                            right: width * 0.1,
                            top: height * 0.1,
                            child: Image.asset(
                              'assets/images/splash/shopIcon4.png',
                              width: imageWidth,
                              height: imageHeight,
                            )),
                        Positioned(
                            left: width * 0.1,
                            bottom: height * 0.25,
                            child: Image.asset(
                              'assets/images/splash/shopIcon3.png',
                              width: imageWidth,
                              height: imageHeight,
                            )),
                        Positioned(
                            left:
                                width * 0.5 - imageWidthLogo / 2, // 可以根据需要调整位置
                            top: height * 0.5 - imageHeightLogo / 2,
                            child: Image.asset(
                              'assets/images/splash/logo.png',
                              width: imageWidthLogo,
                              height: imageHeightLogo,
                            )),
                      ],
                    );
                  })
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Column(children: [
                Column(children: [
                  const SizedBox(
                    width: 318,
                    child: Text('Discover our summer collections',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        )),
                  ),
                  SizedBox(
                    height: screenHeight * 10 / designHeight,
                  ),
                  const SizedBox(
                    width: 318,
                    child: Text(
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor ',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color.fromRGBO(0, 0, 0, 0.7),
                          fontSize: 14,
                        )),
                  ),
                  const Text('')
                ]),
                SizedBox(
                  height: screenHeight * 15 / designHeight,
                ),
                Column(
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        print('email tap');
                        Navigator.pushNamed(context, AppRoutes.registerEmail);
                      },
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.white,
                        backgroundColor:
                            const Color.fromRGBO(43, 57, 185, 1), // 设置按钮文本颜色
                        fixedSize: const Size(318, 60), // 设置按钮宽高
                        elevation: 5, // 设置阴影高度

                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25.0), // 圆角边框
                        ),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 16, vertical: 12),
                      ),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 30),
                            child: SizedBox(
                              width: 50,
                              child: Icon(MdiIcons.email),
                            ),
                          ),
                          const Expanded(
                            flex: 1,
                            child: Text(
                              "Login With Email",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: screenHeight * 30 / designHeight,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        print('email tap');
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        foregroundColor: Colors.white, // 按钮文本颜色
                        side: const BorderSide(
                          color: Color.fromRGBO(55, 106, 237, 1), // 边框颜色
                          width: 1, // 边框宽度
                        ),
                        fixedSize: const Size(318, 60), // 设置按钮宽高
                        elevation: 5, // 设置阴影高度
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25.0), // 圆角边框
                        ),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 16, vertical: 12),
                      ),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 30),
                            child: SizedBox(
                              width: 50,
                              child: Image.asset(
                                  'assets/images/splash/iconfb.png'),
                            ),
                          ),
                          const Expanded(
                            flex: 1,
                            child: Text(
                              "Login With Email",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 10),
                    ElevatedButton(
                      onPressed: () {
                        print('email tap');
                      },
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.white,
                        backgroundColor: Colors.white, //设置按钮文本颜色
                        fixedSize: const Size(318, 60), // 设置按钮宽高
                        elevation: 5, // 设置阴影高度
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25.0), // 圆角边框
                        ),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 16, vertical: 12),
                      ),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 30),
                            child: SizedBox(
                              width: 50,
                              child: Image.asset(
                                  'assets/images/splash/iconGoogle.png'),
                            ),
                          ),
                          const Expanded(
                            flex: 1,
                            child: Text(
                              "Login With Email",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                )
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
