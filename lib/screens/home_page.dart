import 'dart:ui';

import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

import 'package:instagram/constants/colors.dart';
import 'package:instagram/constants/fonts.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.black,
      child: SafeArea(
        child: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              pinned: true,
              stretch: true,
              leadingWidth: 150,
              backgroundColor: AppColors.black,
              actions: [
                Padding(
                  padding: const EdgeInsets.only(right: 17),
                  child: Image.asset(
                    'assets/images/icon_direct.png',
                    width: 26,
                    height: 26,
                  ),
                ),
              ],
              leading: Padding(
                padding: const EdgeInsets.only(left: 17),
                child: Image.asset(
                  'assets/images/moodinger_logo.png',
                  width: 146,
                  height: 20,
                ),
              ),
            ),
            SliverPadding(
              padding: const EdgeInsets.symmetric(horizontal: 17, vertical: 20),
              sliver: SliverToBoxAdapter(
                child: SizedBox(
                  height: 84,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 10,
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: const EdgeInsets.only(right: 15),
                        child: (index == 0)
                            ? pluscontainer()
                            : Column(
                                children: [
                                  storycontainer(),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    'data',
                                    style: AppFonts.gm(
                                      fontsize: 10,
                                      color: AppColors.white,
                                    ),
                                  ),
                                ],
                              ),
                      );
                    },
                  ),
                ),
              ),
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                childCount: 10,
                (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 30),
                    child: Column(
                      children: [
                        postsnamecontent(context),
                        const SizedBox(
                          height: 20,
                        ),
                        postmaincontent(),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container postmaincontent() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 17),
      height: 427,
      width: 394,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Positioned(
            top: 0,
            child: Container(
              height: 394,
              width: 394,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    'assets/images/post_cover.png',
                  ),
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(15),
                ),
              ),
            ),
          ),
          ClipRRect(
            child: BackdropFilter(
              filter: ImageFilter.blur(
                sigmaX: 10,
                sigmaY: 10,
              ),
              child: Container(
                height: 46,
                width: 340,
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    colors: [
                      Color.fromRGBO(255, 255, 255, 0.5),
                      Color.fromRGBO(255, 255, 255, 0.2),
                    ],
                  ),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    children: [
                      Image.asset('assets/images/icon_hart.png'),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                        '14.8',
                        style:
                            AppFonts.gb(fontsize: 16, color: AppColors.white),
                      ),
                      Text(
                        'k',
                        style:
                            AppFonts.gb(fontsize: 16, color: AppColors.white),
                      ),
                      const Spacer(),
                      Image.asset('assets/images/icon_comments.png'),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                        '20.8',
                        style:
                            AppFonts.gb(fontsize: 16, color: AppColors.white),
                      ),
                      Text(
                        'k',
                        style:
                            AppFonts.gb(fontsize: 16, color: AppColors.white),
                      ),
                      const Spacer(),
                      Image.asset('assets/images/icon_share.png'),
                      const Spacer(),
                      Image.asset('assets/images/icon_save.png'),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: 15,
            right: 15,
            child: Image.asset(
              'assets/images/icon_video.png',
              height: 20,
              width: 20,
            ),
          ),
        ],
      ),
    );
  }

  Padding postsnamecontent(contex) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 17),
      child: Row(
        children: [
          storycontainer(),
          const SizedBox(
            width: 10,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Mehdi Shamekhi',
                  style: AppFonts.gb(
                    color: AppColors.white,
                    fontsize: 12,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  'مهدی شامخی برنامه نویس موبایل',
                  style: AppFonts.sm(
                    color: AppColors.white,
                    fontsize: 12,
                  ),
                ),
              ],
            ),
          ),
          const Spacer(),
          InkWell(
            onTap: () {
              showModalBottomSheet(
                  context: contex,
                  builder: (BuildContext buildContext) {
                    return Container(
                      child: Center(
                        child: Text('data'),
                      ),
                    );
                  });
            },
            child: Image.asset(
              'assets/images/icon_menu.png',
            ),
          ),
        ],
      ),
    );
  }

  DottedBorder storycontainer() {
    return DottedBorder(
      borderType: BorderType.RRect,
      radius: const Radius.circular(15),
      dashPattern: const [35, 10],
      padding: const EdgeInsets.all(5),
      color: AppColors.red,
      strokeWidth: 2,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: SizedBox(
          height: 48,
          width: 48,
          child: Image.asset('assets/images/profile.jpeg'),
        ),
      ),
    );
  }

  Widget pluscontainer() {
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
