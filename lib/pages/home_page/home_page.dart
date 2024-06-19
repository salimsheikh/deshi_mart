import 'package:deshi_mart/pages/dashboard/dashboard_page.dart';
import 'package:deshi_mart/providers/drawar_provider/drawer_provider.dart';
import 'package:deshi_mart/widgets/app_drawer.dart';
import 'package:deshi_mart/widgets/app_bar.dart';
import 'package:deshi_mart/widgets/responsive_layout.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final drawerProvider = Provider.of<DrawerProvider>(context, listen: false);
    bool isDesktop = ResponsivePage.isDesktop(context);

    return Scaffold(
      drawer: isDesktop ? null : AppDrawer(drawerProvider: drawerProvider),
      body: SafeArea(
          child: Row(
        children: [
          if (isDesktop)
            Expanded(child: AppDrawer(drawerProvider: drawerProvider)),
          Expanded(
            flex: 6,
            child: Column(
              children: [
                const AppTopBar(),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Consumer<DrawerProvider>(
                    builder: (context, value, child) =>
                        value.pages[value.selectedPageIndex],
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
        children: [const DashboardPage(), child],
      ),
    );
  }
}
