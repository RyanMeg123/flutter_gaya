import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'), // 应用栏标题
        actions: [
          IconButton(
            icon: const Icon(Icons.settings), // 设置图标
            onPressed: () {
              // 点击设置按钮时的操作
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Settings button pressed')),
              );
            },
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Welcome to the Shopping App!', // 主页面内容
              style: TextStyle(fontSize: 24),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // 点击按钮时的操作
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Shop now button pressed')),
                );
              },
              child: const Text('Shop Now'), // 按钮文本
            ),
          ],
        ),
      ),
    );
  }
}
