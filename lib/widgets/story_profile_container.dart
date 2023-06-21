import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import '../constants/colors.dart';

class StoryProfileContainer extends StatelessWidget {
  const StoryProfileContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return DottedBorder(
      borderType: BorderType.RRect,
      radius: const Radius.circular(15),
      dashPattern: const [35, 10],
      padding: const EdgeInsets.all(5),
      color: AppColors.red,
      strokeWidth: 2,
      child: Container(
        height: 46,
        width: 46,
        margin: const EdgeInsets.all(2),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          image: const DecorationImage(
            alignment: Alignment.center,
            fit: BoxFit.cover,
            image: AssetImage(
              'assets/images/profile.jpeg',
            ),
          ),
        ),
      ),
    );
  }
}
