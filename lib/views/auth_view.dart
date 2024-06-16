import 'package:deshi_mart/pages/mobile/auth/mobile_auth_page.dart';
import 'package:deshi_mart/pages/web/auth/web_auth_page.dart';
import 'package:deshi_mart/widgets/responsive_layout.dart';
import 'package:flutter/material.dart';

class AuthView extends StatelessWidget {
  const AuthView({super.key});

  @override
  Widget build(BuildContext context) {
    return const ResponsiveLayout(
      mobile: MobileAuthPage(),
      desktop: WebAuthPage(),
    );
  }
}
