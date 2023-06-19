import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:i_love_cats/view/app.dart';
import 'package:i_love_cats/view/pages/splash_page.dart';

void main() async {
  final Stopwatch runTime = Stopwatch();
  runTime.start();
  log('APP: Start');
  runApp(const SplashPage(isNextPage: false));

  runApp(const ILoveCatsApp());
  runTime.stop();
  log('APP: ${runTime.elapsed.inMilliseconds}ms to run app');
}
