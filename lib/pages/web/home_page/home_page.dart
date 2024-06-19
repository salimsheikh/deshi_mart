import 'package:deshi_mart/configs/assets_path.dart';
import 'package:deshi_mart/providers/drawar_provider/drawer_provider.dart';
import 'package:deshi_mart/widgets/app_drawer_menu.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';

class WebHomePage extends StatelessWidget {
  const WebHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final drawerProvider = Provider.of<DrawerProvider>(context, listen: false);
    return Scaffold(
      body: SafeArea(
          child: Row(
        children: [
          Expanded(
            child: Consumer<DrawerProvider>(builder: (context, value, child) {
              return Column(
                children: [
                  DrawerHeader(
                    child: SvgPicture.asset(IconsAssets.appIcon),
                  ),
                  AppDrawerMenu(
                    isSelected: drawerProvider.selectedPageIndex == 0,
                    title: "Dashboard",
                    icon: IconsAssets.dashboard,
                    onPress: () {
                      drawerProvider.seletedMenu(0);
                    },
                  ),
                  AppDrawerMenu(
                    isSelected: drawerProvider.selectedPageIndex == 1,
                    title: "Bag",
                    icon: IconsAssets.bag,
                    onPress: () {
                      drawerProvider.seletedMenu(1);
                    },
                  ),
                  AppDrawerMenu(
                    isSelected: drawerProvider.selectedPageIndex == 2,
                    title: "Category",
                    icon: IconsAssets.shop,
                    onPress: () {
                      drawerProvider.seletedMenu(2);
                    },
                  ),
                  AppDrawerMenu(
                    isSelected: drawerProvider.selectedPageIndex == 3,
                    title: "Coupon",
                    icon: IconsAssets.done,
                    onPress: () {
                      drawerProvider.seletedMenu(3);
                    },
                  ),
                  AppDrawerMenu(
                    isSelected: drawerProvider.selectedPageIndex == 4,
                    title: "Settings",
                    icon: IconsAssets.setting,
                    onPress: () {
                      drawerProvider.seletedMenu(4);
                    },
                  ),
                  AppDrawerMenu(
                    isSelected: drawerProvider.selectedPageIndex == 5,
                    title: "Cart",
                    icon: IconsAssets.cart,
                    onPress: () {
                      drawerProvider.seletedMenu(5);
                    },
                  ),
                ],
              );
            }),
          ),
          Expanded(
            flex: 6,
            child: Container(
              color: Colors.blueGrey,
            ),
          ),
        ],
      )),
    );
  }
}
