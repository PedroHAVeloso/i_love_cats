import 'package:flutter/material.dart';
import 'package:i_love_cats/view/constants/app_colors.dart';
import 'package:i_love_cats/view/pages/splash_page.dart';

class ILoveCatsApp extends StatelessWidget {
  const ILoveCatsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: AppColors.black,
      ),
      home: const SplashPage(isNextPage: true,),
    );
  }
}
