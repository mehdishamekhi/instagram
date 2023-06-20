import 'package:flutter/material.dart';

import '../constants/colors.dart';
import '../constants/fonts.dart';

class StoryProfileAddContainer extends StatelessWidget {
  const StoryProfileAddContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 64,
          width: 64,
          decoration: BoxDecoration(
            image: const DecorationImage(
              image: AssetImage('assets/images/icon_plus.png'),
            ),
            border: Border.all(
              width: 3,
              color: Colors.white,
            ),
            borderRadius: BorderRadius.circular(20),
            color: AppColors.black,
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
          'Your Story',
          style: AppFonts.gm(
            fontsize: 10,
            color: AppColors.white,
          ),
        )
      ],
    );
  }
}
