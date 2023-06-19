import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:i_love_cats/view/constants/app_colors.dart';
import 'package:i_love_cats/view/pages/generate_cat_image_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

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
                Row(
                  children: [
                    Text(
                      'Com o ',
                      style: GoogleFonts.poppins(
                        color: AppColors.white,
                        fontWeight: FontWeight.w700,
                        fontSize: 36.0,
                      ),
                    ),
                    const SizedBox(
                      width: 6.0,
                    ),
                    SvgPicture.asset(
                      'assets/images/colour_logo.svg',
                      width: 140.0,
                    ),
                  ],
                ),
                Text(
                  'você pode:',
                  style: GoogleFonts.poppins(
                    color: AppColors.white,
                    fontWeight: FontWeight.w700,
                    fontSize: 36.0,
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Text(
                  'Gerar a foto de um gatinho aleatório.\n'
                  'Gerar um pequeno fato sobre gatinhos a cada 1 hora.\n'
                  'No momento, só.',
                  style: GoogleFonts.poppins(
                    color: AppColors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: 22.0,
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
                          'Gerar foto',
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
                        'Gerar fato',
                        style: GoogleFonts.poppins(
                          color: AppColors.black,
                          fontWeight: FontWeight.w700,
                          fontSize: 26.0,
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
                  child: OutlinedButton(
                    onPressed: () {},
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
                        'Configurações',
                        style: GoogleFonts.poppins(
                          color: AppColors.white,
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
