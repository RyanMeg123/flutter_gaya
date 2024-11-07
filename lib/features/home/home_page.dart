import 'package:flutter/material.dart';
import 'package:flutter_gaya_2/controllers/home_controller.dart';
import 'package:flutter_gaya_2/features/home/tabs/cart_rab.dart';
import 'package:flutter_gaya_2/features/home/tabs/home_tab.dart';
import 'package:flutter_gaya_2/features/home/tabs/profile_tab.dart';
import 'package:flutter_gaya_2/features/home/tabs/transaction_tab.dart';
import 'package:flutter_gaya_2/features/home/widgets/bottom_nav_bar.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<StatefulWidget> createState() {
    return _HomePageState();
  }
}

class _HomePageState extends State<HomePage> {
  late HomeController _controller;

  @override
  void initState() {
    super.initState();
    // 初始化 controller
    _controller = HomeController();
  }

  void _onTabTapped(int index) {
    print('press tab $index');
    _controller.changeTabIndex(index);
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => _controller,
      child: Scaffold(
          appBar: AppBar(
            toolbarHeight: 44,
            leading: IconButton(
              icon: Icon(MdiIcons.arrowLeft), // 左上角的返回图标
              onPressed: () {
                // 返回上一页
                Navigator.pop(context);
              },
            ),
          ),
          body: Consumer<HomeController>(builder: (context, controller, child) {
            return _getTabPage(controller.currentTabIndex);
          }),
          bottomNavigationBar: Consumer<HomeController>(
            builder: (context, controller, child) => BottomNavBar(
              currentIndex: controller.currentTabIndex,
              onTap: _onTabTapped,
            ),
          )),
    );
  }

  Widget _getTabPage(int currentIndex) {
    final List<Widget> tabs = [
      const HomeTab(),
      const TransactionTab(),
      const CartTab(),
      const ProfileTab(),
    ];
    return tabs[currentIndex];
  }

  @override
  void dispose() {
    _controller.dispose(); // 清理 controller
    super.dispose();
  }
}
