import 'package:flutter/material.dart';
import 'package:i_love_cats/view/widgets/appbar.dart';

class GenerateCatImagePage extends StatelessWidget {
  const GenerateCatImagePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBarWidget(isReturnButton: 
        true, scaffoldState: null),
      ),
    );
  }
}
