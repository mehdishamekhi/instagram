import 'package:flutter/material.dart';
import 'package:instagram/constants/colors.dart';
import 'package:instagram/constants/fonts.dart';

class WellcomePage extends StatelessWidget {
  const WellcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: AppColors.black,
        image: DecorationImage(
          repeat: ImageRepeat.repeat,
          image: AssetImage(
            'assets/images/pattern 1.png',
          ),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Spacer(),
            Image.asset(
              'assets/images/Startlogo.png',
              width: 160,
              height: 80,
            ),
            const Spacer(),
            Column(
              children: [
                Text(
                  'From',
                  textAlign: TextAlign.center,
                  style: AppFonts.gb(
                    color: AppColors.grey,
                    fontsize: 20,
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  'Mehdi Shamekhi',
                  textAlign: TextAlign.center,
                  style: AppFonts.gb(
                    color: Colors.blue,
                    fontsize: 20,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
