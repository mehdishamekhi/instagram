import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:instagram/constants/colors.dart';
import 'package:instagram/constants/fonts.dart';
import 'package:instagram/screens/option_bottomsheet.dart';
import 'package:instagram/screens/send_bottomsheet.dart';
import 'package:instagram/widgets/story_profile_add_container.dart';
import 'package:instagram/widgets/story_profile_container.dart';

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
                            ? const StoryProfileAddContainer()
                            : Column(
                                children: [
                                  const StoryProfileContainer(),
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
                        postmaincontent(context),
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

  Container postmaincontent(context) {
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
                      InkWell(
                        onTap: () {
                          showModalBottomSheet(
                            barrierColor: Colors.transparent,
                            isScrollControlled: true,
                            backgroundColor: Colors.transparent,
                            context: context,
                            builder: (BuildContext buildContext) {
                              return Padding(
                                padding: EdgeInsets.only(
                                  bottom: MediaQuery.of(buildContext)
                                      .viewInsets
                                      .bottom,
                                ),
                                child: DraggableScrollableSheet(
                                  minChildSize: 0.2,
                                  initialChildSize: 0.4,
                                  maxChildSize: 0.7,
                                  builder: (context, scrollController) {
                                    return Sendbottomsheet(
                                        controller: scrollController);
                                  },
                                ),
                              );
                            },
                          );
                        },
                        child: Image.asset('assets/images/icon_share.png'),
                      ),
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
          const StoryProfileContainer(),
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
                backgroundColor: Colors.transparent,
                context: contex,
                builder: (BuildContext buildContext) {
                  return const OptionBottomsheet();
                },
              );
            },
            child: Image.asset(
              'assets/images/icon_menu.png',
            ),
          ),
        ],
      ),
    );
  }
}
