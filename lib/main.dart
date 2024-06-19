import 'package:deshi_mart/configs/themes.dart';
import 'package:deshi_mart/pages/home_page/home_page.dart';
import 'package:deshi_mart/providers/drawar_provider/drawer_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => DrawerProvider(),
        ),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ligthTheme,
      home: const HomePage(),
    );
  }
}
