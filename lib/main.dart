import 'package:coffe_shop_app/config/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'screens/delivery_screen/delivery_screen.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark.copyWith(
      statusBarColor: Colors.white, statusBarBrightness: Brightness.dark));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: AppColors.primaryColor),
        scaffoldBackgroundColor: AppColors.backgroundColor,
        canvasColor: Colors.transparent,
        useMaterial3: true,
      ),
      home: const DeliveryScreen(),
    );
  }
}
