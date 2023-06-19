import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:i_love_cats/api/cat_images.dart';
import 'package:i_love_cats/view/constants/app_colors.dart';

class GenerateCatImagePage extends StatelessWidget {
  const GenerateCatImagePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: double.infinity,
                  height: 65.0,
                  child: OutlinedButton(
                    onPressed: () => Navigator.pop(context),
                    style: OutlinedButton.styleFrom(
                      padding: const EdgeInsets.all(0.0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      side: const BorderSide(
                        color: AppColors.white,
                        width: 3.0,
                      ),
                    ),
                    child: Center(
                      child: Text(
                        'Voltar',
                        style: GoogleFonts.poppins(
                          color: AppColors.white,
                          fontWeight: FontWeight.w700,
                          fontSize: 26.0,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30.0,
                ),
                Container(
                  width: double.infinity,
                  constraints: const BoxConstraints(
                    minHeight: 200.0,
                  ),
                  child: FutureBuilder(
                    future: CatImages.generateCatImage(),
                    builder: (context, snapshot) {
                      if (snapshot.connectionState == ConnectionState.waiting) {
                        return const Center(
                          child: SizedBox(
                            height: 80.0,
                            width: 80.0,
                            child: CircularProgressIndicator(
                              color: AppColors.white,
                            ),
                          ),
                        );
                      } else {
                        return ClipRRect(
                          borderRadius: BorderRadius.circular(20.0),
                          child: Image.network(
                            snapshot.data!,
                          ),
                        );
                      }
                    },
                  ),
                ),
                const SizedBox(
                  height: 30.0,
                ),
                SizedBox(
                  width: double.infinity,
                  height: 65.0,
                  child: ElevatedButton(
                    onPressed: () => Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const GenerateCatImagePage(),
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.all(0.0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                    ),
                    child: Ink(
                      height: double.infinity,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        gradient: const LinearGradient(
                          colors: [
                            AppColors.green,
                            AppColors.pink,
                            AppColors.cyan,
                            AppColors.yellow,
                            AppColors.blue,
                          ],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: Center(
                        child: Text(
                          'Gerar novamente',
                          style: GoogleFonts.poppins(
                            color: AppColors.black,
                            fontWeight: FontWeight.w700,
                            fontSize: 26.0,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 12.0,
                ),
                SizedBox(
                  width: double.infinity,
                  height: 65.0,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.all(0.0),
                      backgroundColor: AppColors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                    ),
                    child: Center(
                      child: Text(
                        'Baixar foto',
                        style: GoogleFonts.poppins(
                          color: AppColors.black,
                          fontWeight: FontWeight.w700,
                          fontSize: 26.0,
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
    );
  }
}
