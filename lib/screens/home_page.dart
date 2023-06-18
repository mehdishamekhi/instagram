import 'package:flutter/material.dart';
import 'package:instagram/constants/colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.black,
      child: SafeArea(
        child: CustomScrollView(
          slivers: <Widget>[
            SliverPadding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
              sliver: SliverToBoxAdapter(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      'assets/images/moodinger_logo.png',
                      width: 146,
                      height: 20,
                    ),
                    Image.asset(
                      'assets/images/icon_direct.png',
                      width: 26,
                      height: 26,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
