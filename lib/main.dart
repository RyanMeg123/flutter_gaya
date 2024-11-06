import 'package:flutter/material.dart';
import 'package:flutter_gaya_2/routes.dart';

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
      title: 'DAYA',
      theme: ThemeData(primarySwatch: Colors.blue),
      initialRoute: AppRoutes.splash, // 初始路由设置为开屏页
      onGenerateRoute: AppRoutes.generateRoute,
    );
  }
}
