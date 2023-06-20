import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:instagram/constants/colors.dart';
import 'package:instagram/constants/fonts.dart';

class OptionBottomsheet extends StatefulWidget {
  const OptionBottomsheet({super.key});

  @override
  State<OptionBottomsheet> createState() => _OptionBottomsheetState();
}

class _OptionBottomsheetState extends State<OptionBottomsheet> {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.only(
        topLeft: Radius.circular(20),
        topRight: Radius.circular(20),
      ),
      child: BackdropFilter(
        filter: ImageFilter.blur(
          sigmaX: 40,
          sigmaY: 40,
        ),
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color.fromRGBO(255, 255, 255, 0.5),
                Color.fromRGBO(255, 255, 255, 0.2),
              ],
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 15),
            child: Column(
              children: [
                Container(
                  height: 6,
                  width: 60,
                  decoration: BoxDecoration(
                    color: AppColors.white,
                    borderRadius: BorderRadius.circular(100),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 80, vertical: 30),
                  child: Row(
                    children: [
                      Column(
                        children: [
                          Container(
                            height: 70,
                            width: 70,
                            decoration: BoxDecoration(
                              image: const DecorationImage(
                                image:
                                    AssetImage('assets/images/icon_save.png'),
                              ),
                              border: Border.all(
                                width: 2,
                                color: AppColors.white,
                              ),
                              shape: BoxShape.circle,
                            ),
                          ),
                          const SizedBox(height: 10),
                          Text(
                            'Save',
                            style: AppFonts.gb(
                              color: AppColors.white,
                              fontsize: 15,
                            ),
                          ),
                        ],
                      ),
                      const Spacer(),
                      Column(
                        children: [
                          Container(
                            height: 70,
                            width: 70,
                            decoration: BoxDecoration(
                              border: Border.all(
                                width: 2,
                                color: AppColors.white,
                              ),
                              shape: BoxShape.circle,
                            ),
                            child: const Icon(
                              Icons.qr_code_scanner_rounded,
                              size: 35,
                              color: Colors.white,
                            ),
                          ),
                          const SizedBox(height: 10),
                          Text(
                            'QR code',
                            style: AppFonts.gb(
                              color: AppColors.white,
                              fontsize: 15,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const Divider(
                  color: Colors.white,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    children: [
                      Image.asset(
                        'assets/images/icon_share.png',
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Column(
                        children: [
                          Text(
                            'We\'re moving things around!',
                            style: AppFonts.gb(
                              color: Colors.white,
                              fontsize: 15,
                            ),
                          ),
                          Text(
                            'See where to share and link',
                            style: AppFonts.gb(
                              color: Colors.blue,
                              fontsize: 15,
                            ),
                          ),
                        ],
                      ),
                      const Spacer(),
                      const Icon(
                        Icons.close,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
                const Divider(
                  color: Colors.white,
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                  child: Row(
                    children: [
                      const Icon(
                        Icons.star_border,
                        size: 30,
                        color: Colors.white,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Add to favorites',
                        style: AppFonts.gb(
                          color: Colors.white,
                          fontsize: 20,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                  child: Row(
                    children: [
                      const Icon(
                        Icons.person_remove_alt_1_outlined,
                        size: 30,
                        color: Colors.white,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Unfollow',
                        style: AppFonts.gb(
                          color: Colors.white,
                          fontsize: 20,
                        ),
                      ),
                    ],
                  ),
                ),
                const Divider(
                  color: Colors.white,
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                  child: Row(
                    children: [
                      const Icon(
                        Icons.error_outline,
                        size: 30,
                        color: Colors.white,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Why you\'re seeing this post',
                        style: AppFonts.gb(
                          color: Colors.white,
                          fontsize: 20,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                  child: Row(
                    children: [
                      const Icon(
                        Icons.visibility_off_outlined,
                        size: 30,
                        color: Colors.white,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Hide',
                        style: AppFonts.gb(
                          color: Colors.white,
                          fontsize: 20,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                  child: Row(
                    children: [
                      const Icon(
                        Icons.account_circle_outlined,
                        size: 30,
                        color: Colors.white,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        'About this account',
                        style: AppFonts.gb(
                          color: Colors.white,
                          fontsize: 20,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                  child: Row(
                    children: [
                      const Icon(
                        Icons.gpp_bad_sharp,
                        size: 30,
                        color: Colors.red,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Report',
                        style: AppFonts.gb(
                          color: Colors.red,
                          fontsize: 20,
                        ),
                      ),
                    ],
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
