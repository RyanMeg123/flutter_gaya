import 'package:flutter/material.dart';

import 'features/splash/views/splash_page.dart';
import 'features/home/views/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Splash Screen Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      initialRoute: '/', // 初始路由设置为开屏页
      routes: {
        '/': (context) => const SplashPage(), // 开屏页
        '/home': (context) => const HomePage(), // 主页
      },
    );
  }
}
