import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:instagram/constants/colors.dart';
import 'package:instagram/constants/fonts.dart';

class Sendbottomsheet extends StatelessWidget {
  const Sendbottomsheet({required this.controller, super.key});
  final ScrollController controller;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      child: BackdropFilter(
        filter: ImageFilter.blur(
          sigmaY: 40,
          sigmaX: 40,
        ),
        child: Container(
          decoration: const BoxDecoration(
            color: Color.fromRGBO(255, 255, 255, 0.2),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
            ),
          ),
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              CustomScrollView(
                controller: controller,
                slivers: <Widget>[
                  SliverToBoxAdapter(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 180,
                            vertical: 10,
                          ),
                          child: Container(
                            height: 5,
                            width: 67,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 44,
                            vertical: 20,
                          ),
                          child: Row(
                            children: [
                              Text(
                                'Share',
                                style: AppFonts.gb(
                                  fontsize: 24,
                                  color: Colors.white,
                                ),
                              ),
                              const Spacer(),
                              Image.asset(
                                'assets/images/icon_share_bottomsheet.png',
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 44,
                            vertical: 20,
                          ),
                          child: ClipRRect(
                            child: BackdropFilter(
                              filter: ImageFilter.blur(
                                sigmaX: 40,
                                sigmaY: 40,
                              ),
                              child: Container(
                                height: 50,
                                width: 340,
                                decoration: BoxDecoration(
                                  color:
                                      const Color.fromRGBO(255, 255, 255, 0.4),
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 15,
                                    vertical: 10,
                                  ),
                                  child: Row(
                                    children: [
                                      Image.asset(
                                        'assets/images/icon_search.png',
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      Expanded(
                                        child: TextField(
                                          decoration: InputDecoration(
                                            focusedBorder: InputBorder.none,
                                            enabledBorder: InputBorder.none,
                                            hintText: 'Search...',
                                            hintStyle: AppFonts.gb(
                                              fontsize: 14,
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
                        ),
                      ],
                    ),
                  ),
                  SliverPadding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 44,
                      vertical: 20,
                    ),
                    sliver: SliverGrid(
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        mainAxisExtent: 110,
                        crossAxisCount: 4,
                        mainAxisSpacing: 20,
                        crossAxisSpacing: 20,
                      ),
                      delegate: SliverChildBuilderDelegate(
                        childCount: 67,
                        (context, index) {
                          return Column(
                            children: [
                              Container(
                                height: 50,
                                width: 50,
                                decoration: const BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(15)),
                                  image: DecorationImage(
                                    image: AssetImage(
                                      'assets/images/profile.jpeg',
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(
                                'user',
                                style: AppFonts.gb(
                                  fontsize: 14,
                                ),
                              ),
                            ],
                          );
                        },
                      ),
                    ),
                  ),
                  const SliverPadding(
                    padding: EdgeInsets.only(
                      bottom: 120,
                    ),
                  ),
                ],
              ),
              Positioned(
                bottom: 47,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(130, 46),
                    backgroundColor: AppColors.red,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  onPressed: () {},
                  child: Text(
                    'Send',
                    style: AppFonts.gb(
                      fontsize: 16,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
