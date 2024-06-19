import 'package:deshi_mart/pages/category/category_page.dart';
import 'package:deshi_mart/pages/coupon/coupon_page.dart';
import 'package:deshi_mart/pages/dashboard/dashboard_page.dart';
import 'package:deshi_mart/pages/product/product_page.dart';
import 'package:deshi_mart/pages/settings/settings_page.dart';
import 'package:flutter/material.dart';

class DrawerProvider extends ChangeNotifier {
  int selectedPageIndex = 0;

  var pages = [
    const DashboardPage(),
    const ProductPage(),
    const CategoryPage(),
    const CouponPage(),
    const SettingsPage(),
  ];

  void seletedMenu(int index) {
    selectedPageIndex = index;
    notifyListeners();
  }
}
