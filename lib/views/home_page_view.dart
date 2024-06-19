import 'package:deshi_mart/pages/mobile/home_page/home_page.dart';
import 'package:deshi_mart/pages/web/home_page/home_page.dart';
import 'package:deshi_mart/widgets/responsive_layout.dart';
import 'package:flutter/material.dart';

class HomePageView extends StatelessWidget {
  const HomePageView({super.key});

  @override
  Widget build(BuildContext context) {
    return const ResponsiveLayout(
      mobile: MobileHomePage(),
      desktop: WebHomePage(),
    );
  }
}
