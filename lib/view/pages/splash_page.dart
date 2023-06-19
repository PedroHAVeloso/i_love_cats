import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:i_love_cats/view/constants/app_colors.dart';
import 'package:i_love_cats/view/pages/home_page.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key, required this.isNextPage});

  final bool isNextPage;
  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    if (widget.isNextPage) {
      nextPage();
    }
    super.initState();
  }

  void nextPage() {
    Timer(
      const Duration(seconds: 1),
      () => Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => const HomePage(),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.ltr,
      child: SafeArea(
        child: Scaffold(
          body: Container(
            decoration: const BoxDecoration(
              gradient: AppColors.gradient,
            ),
            child: Center(
              child: FractionallySizedBox(
                widthFactor: 0.6,
                child: SvgPicture.asset('assets/images/light_logo.svg'),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
