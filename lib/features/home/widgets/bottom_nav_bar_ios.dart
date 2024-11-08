import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class IOSBottomNavBar extends StatelessWidget {
  final int currentIndex;
  final ValueChanged<int> onTap;

  const IOSBottomNavBar({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        border: Border(
          top: BorderSide(
            color: Color.fromRGBO(219, 219, 219, 1), // 设置顶部边框的颜色
            width: 2, // 设置顶部边框的宽度
          ),
        ),
      ),
      child: CupertinoTabBar(
        currentIndex: currentIndex,
        onTap: onTap,
        activeColor: const Color.fromRGBO(43, 57, 185, 1), // 选中项的颜色
        inactiveColor: const Color.fromRGBO(185, 188, 211, 1), // 未选中项的颜色
        iconSize: 24.0, // 设置固定图标大小
        items: const [
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.arrow_right_arrow_left),
            label: 'Transaction',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.cart),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.profile_circled),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
