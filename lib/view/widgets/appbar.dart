import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  const AppBarWidget({
    super.key,
    required this.isReturnButton,
    required this.scaffoldState,
  });

  final bool isReturnButton;
  final GlobalKey<ScaffoldState>? scaffoldState;

  @override
  Size get preferredSize => const Size.fromHeight(70.0);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: SizedBox(
        width: double.infinity,
        height: preferredSize.height,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Positioned(
              left: 0.0,
              child: isReturnButton
                  ? GestureDetector(
                      onTap: Navigator.of(context).pop,
                      child: SvgPicture.asset(
                        'assets/images/arrow_back_ios.svg',
                      ),
                    )
                  : GestureDetector(
                      onTap: () => scaffoldState!.currentState!.openDrawer(),
                      child: SvgPicture.asset(
                        'assets/images/menu.svg',
                      ),
                    ),
            ),
            SvgPicture.asset(
              'assets/images/gradient_logo.svg',
              height: 24.0,
            ),
          ],
        ),
      ),
    );
  }
}
