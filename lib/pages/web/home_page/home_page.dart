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
              return Drawer(
                backgroundColor: Theme.of(context).colorScheme.onPrimary,
                child: SingleChildScrollView(
                  child: Column(
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
                  ),
                ),
              );
            }),
          ),
          const Expanded(
            flex: 6,
            child: Column(
              children: [
                AppBar(),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: EdgeInsets.all(10),
                  child: CommanPage(
                    pageTitle: "Dashboard",
                    child: Column(
                      children: [
                        Text("First Page"),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      )),
    );
  }
}

class CommanPage extends StatelessWidget {
  final String pageTitle;
  final Widget child;
  const CommanPage({super.key, required this.pageTitle, required this.child});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Column(
      children: [
        Row(
          children: [
            Container(
              height: 40,
              width: 7,
              color: Theme.of(context).colorScheme.primaryContainer,
            ),
            const SizedBox(width: 10),
            Text(
              pageTitle,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ],
        ),
        const SizedBox(width: 30),
        child
      ],
    ));
  }
}

class AppBar extends StatelessWidget {
  const AppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.onPrimaryContainer,
      ),
      child: Row(
        children: [
          const Spacer(),
          Expanded(
            child: TextFormField(
              decoration: InputDecoration(
                hintText: "Search text ...",
                filled: true,
                fillColor: Theme.of(context).colorScheme.onPrimary,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none,
                ),
                suffixIcon: Container(
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.primaryContainer,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: const Icon(
                    Icons.search,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(width: 60),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.dark_mode),
          ),
          const SizedBox(width: 60),
          Container(
            padding: const EdgeInsets.all(7),
            decoration: BoxDecoration(
              color: Theme.of(context)
                  .colorScheme
                  .primaryContainer
                  .withOpacity(.2),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              children: [
                CircleAvatar(
                  backgroundColor:
                      Theme.of(context).colorScheme.primaryContainer,
                  child: Text(
                    "N",
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          color: Theme.of(context).colorScheme.onPrimary,
                        ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  "Salim Shaikh",
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        color:
                            Theme.of(context).colorScheme.onSecondaryContainer,
                      ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
