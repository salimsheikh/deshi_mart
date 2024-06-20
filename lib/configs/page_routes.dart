import 'package:deshi_mart/pages/product/add_product_page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

/// The route configuration.
final GoRouter pageRoutes = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        //return const HomePage();
        return const AddProductPage();
      },
    ),
    GoRoute(
      path: '/addProduct',
      builder: (BuildContext context, GoRouterState state) {
        return const AddProductPage();
      },
    ),
  ],
);
