import 'dart:ffi';
import 'dart:io';

import 'package:badges/badges.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;

import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class HomeTabAppBar extends StatefulWidget {
  final String userName;
  final String badgeCount;
  final VoidCallback onFavoritesTap;
  final VoidCallback onNotificationsTap;
  final ValueChanged<String> onSearchChanged;

  const HomeTabAppBar({
    super.key,
    required this.userName,
    required this.badgeCount,
    required this.onFavoritesTap,
    required this.onNotificationsTap,
    required this.onSearchChanged,
  });

  @override
  State<StatefulWidget> createState() {
    return _HomeTabAppBarState();
  }
}

class _HomeTabAppBarState extends State<HomeTabAppBar> {
  final TextEditingController _controller = TextEditingController();
  final FocusNode _focusNode = FocusNode(); // 创建 FocusNode

  void _clearSearch() {
    setState(() {
      _controller.clear();
    });
    widget.onSearchChanged('');
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15, right: 28, left: 28),
      child: GestureDetector(
        onTap: () {
          FocusScope.of(context).requestFocus(FocusNode()); // 点击空白区域时移除焦点
        },
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // 欢迎文字
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Hello',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                        ),
                      ),
                      const SizedBox(height: 6),
                      Text(
                        widget.userName,
                        textAlign: TextAlign.left,
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                // 图标
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Image.asset(
                        'assets/images/home/ic_wishlist.png', // 替换为你自己的图片路径
                        width: 48.0, // 图标宽度
                        height: 48.0, // 图标高度
                      ),
                    ),
                    badges.Badge(
                      position: BadgePosition.topEnd(
                        top: -10,
                        end: -10,
                      ),
                      badgeContent: Text(
                        widget.badgeCount, // 显示数字
                        style:
                            const TextStyle(color: Colors.white, fontSize: 12),
                      ),
                      badgeColor: const Color.fromRGBO(43, 57, 185, 1),
                      child: Image.asset(
                        'assets/images/home/ic_notification.png', // 替换为你自己的图片路径
                        width: 48.0, // 图标宽度
                        height: 48.0, // 图标高度
                      ),
                    )
                  ],
                ),
              ],
            ),
            const SizedBox(height: 23),
            SizedBox(
              height: 54,
              child: TextField(
                focusNode: _focusNode, // 设置 FocusNode
                controller: _controller,
                decoration: InputDecoration(
                  filled: true, // 背景填充颜色
                  fillColor: const Color.fromRGBO(239, 239, 239, 1),
                  hintText: 'Search...',
                  enabledBorder: const OutlineInputBorder(
                    borderSide:
                        BorderSide(color: Colors.white, width: 1), // 非选中时的边框
                  ),
                  focusedBorder: const OutlineInputBorder(
                    borderSide: BorderSide(
                        color: Color.fromRGBO(43, 57, 185, 1),
                        width: 1), // 选中时的边框
                  ),
                  suffixIcon: _controller.text.isNotEmpty
                      ? IconButton(
                          icon: const Icon(CupertinoIcons.clear),
                          onPressed: _clearSearch,
                        )
                      : null,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(18),
                  ),
                ),
                onChanged: widget.onSearchChanged,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
