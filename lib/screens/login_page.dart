import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:instagram/constants/colors.dart';
import 'package:instagram/screens/whole_screen.dart';
import '../constants/fonts.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 3,
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Container(
                  decoration: const BoxDecoration(
                    color: AppColors.black,
                    image: DecorationImage(
                      image: AssetImage(
                        'assets/images/switch_account_background.png',
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 70),
                  child: ClipRRect(
                    child: BackdropFilter(
                      filter: ImageFilter.blur(
                        sigmaX: 10,
                        sigmaY: 10,
                      ),
                      child: Container(
                        height: 352,
                        width: 340,
                        decoration: BoxDecoration(
                          gradient: const LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              Color.fromRGBO(255, 255, 255, 0.5),
                              Color.fromRGBO(255, 255, 255, 0.2),
                            ],
                          ),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Column(
                          children: [
                            Container(
                              margin:
                                  const EdgeInsets.only(top: 32, bottom: 20),
                              height: 129,
                              width: 129,
                              decoration: BoxDecoration(
                                image: const DecorationImage(
                                  image:
                                      AssetImage('assets/images/profile.jpeg'),
                                ),
                                borderRadius: BorderRadius.circular(25),
                              ),
                            ),
                            Text(
                              'Mehdi Shamekhi',
                              style: AppFonts.gb(
                                color: AppColors.white,
                                fontsize: 18,
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 20, bottom: 32),
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  minimumSize: const Size(130, 45),
                                  backgroundColor: AppColors.red,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                ),
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => const Wholepage(),
                                    ),
                                  );
                                },
                                child: Text(
                                  'Confirm',
                                  style: AppFonts.gb(
                                    fontsize: 16,
                                    color: AppColors.white,
                                  ),
                                ),
                              ),
                            ),
                            Text(
                              'Switch account',
                              style: AppFonts.gb(
                                color: AppColors.white,
                                fontsize: 18,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              color: AppColors.black,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Don\'t you have an account?',
                    style: AppFonts.gb(
                      color: const Color.fromARGB(255, 101, 99, 99),
                      fontsize: 16,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Text(
                      'sing up',
                      style: AppFonts.gb(
                        color: AppColors.grey,
                        fontsize: 18,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
