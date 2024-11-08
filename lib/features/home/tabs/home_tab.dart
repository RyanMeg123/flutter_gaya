import 'package:flutter/material.dart';
import 'package:flutter_gaya_2/features/home/widgets/carousel.dart';
import 'package:flutter_gaya_2/features/home/widgets/home_app_bar.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import '../widgets/tab_content.dart';

class HomeTab extends StatefulWidget {
  const HomeTab({super.key});

  @override
  _HomeTabstate createState() => _HomeTabstate();
}

class _HomeTabstate extends State<HomeTab> {
  void _onFavoritesTap() {
    print('_onFavoritesTap');
  }

  void _onNotificationsTap() {
    print('_onNotificationsTap');
  }

  String searchQuery = '';
  final List<String> _imgList = [
    'assets/images/home/banner1.png',
    'assets/images/home/banner1.png',
    'assets/images/home/banner1.png',
    'assets/images/home/banner1.png',
  ];

  // 定义回调函数，处理子组件传来的搜索文本
  void updateSearchQuery(String query) {
    print(query);
    setState(() {
      searchQuery = query;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).requestFocus(FocusNode()); // 点击空白区域时移除焦点
        },
        child: ListView(
          children: [
            Container(
              child: Column(
                children: [
                  HomeTabAppBar(
                    userName: 'Ryan',
                    badgeCount: '30',
                    onFavoritesTap: _onFavoritesTap,
                    onNotificationsTap: _onNotificationsTap,
                    onSearchChanged: updateSearchQuery,
                  ),
                  CustomCarousel(
                    imgList: _imgList,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
