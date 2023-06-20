import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:i_love_cats/api/cat_images.dart';
import 'package:i_love_cats/view/constants/app_colors.dart';
import 'package:i_love_cats/view/widgets/appbar.dart';
import 'package:i_love_cats/view/widgets/gradient.dart';

class GenerateCatImagePage extends StatelessWidget {
  const GenerateCatImagePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: const AppBarWidget(
          isReturnButton: true,
          scaffoldState: null,
        ),
        body: FutureBuilder(
          future: CatImages.generateCatImage(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    GradientWidget(
                      widget: Text(
                        'Aguarde, estamos\ngerando um gatinho.',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w700,
                          fontSize: 18.0,
                        ),
                      ),
                      gradient: AppColors.gradient,
                    ),
                    const SizedBox(
                      height: 30.0,
                    ),
                    const SizedBox(
                      height: 100.0,
                      width: 100.0,
                      child: CircularProgressIndicator(
                        color: AppColors.green,
                      ),
                    ),
                  ],
                ),
              );
            } else {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          gradient: AppColors.gradient,
                          borderRadius: BorderRadius.circular(34.0),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Container(
                            decoration: BoxDecoration(
                              color: AppColors.white,
                              borderRadius: BorderRadius.circular(30.0),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  GestureDetector(
                                    onTap: () {},
                                    child: Container(
                                      height: 60.0,
                                      decoration: BoxDecoration(
                                        gradient: AppColors.gradient,
                                        borderRadius:
                                            BorderRadius.circular(30.0),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(4.0),
                                        child: Container(
                                          decoration: BoxDecoration(
                                            color: AppColors.white,
                                            borderRadius:
                                                BorderRadius.circular(30.0),
                                          ),
                                          child: Center(
                                            child: GradientWidget(
                                              widget: Text(
                                                'Baixar Imagem',
                                                style: GoogleFonts.poppins(
                                                  fontWeight: FontWeight.w700,
                                                  fontSize: 24.0,
                                                ),
                                              ),
                                              gradient: AppColors.gradient,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 10.0,
                                  ),
                                  GestureDetector(
                                    onTap: () {},
                                    child: Container(
                                      height: 60.0,
                                      decoration: BoxDecoration(
                                        gradient: AppColors.gradient,
                                        borderRadius:
                                            BorderRadius.circular(30.0),
                                      ),
                                      child: Center(
                                        child: Text(
                                          'Gerar novamente',
                                          style: GoogleFonts.poppins(
                                            fontWeight: FontWeight.w700,
                                            color: AppColors.white,
                                            fontSize: 24.0,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20.0),
                        child: Image.network(snapshot.data!),
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                    ],
                  ),
                ),
              );
            }
          },
        ),
      ),
    );
  }
}
