import 'package:flutter/material.dart';
import 'package:instagram/screens/profile_screen.dart';
import 'package:instagram/screens/search_screen.dart';
import '../constants/colors.dart';
import 'activity_screen.dart';
import 'add_post_screen.dart';
import 'home_page.dart';

class Wholepage extends StatefulWidget {
  const Wholepage({super.key});

  @override
  State<Wholepage> createState() => _WholepageState();
}

class _WholepageState extends State<Wholepage> {
  int selecttednavigationitem = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      bottomNavigationBar: Container(
        color: Colors.transparent,
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(15),
            topRight: Radius.circular(15),
          ),
          child: BottomNavigationBar(
            showSelectedLabels: false,
            currentIndex: selecttednavigationitem,
            onTap: (int index) {
              setState(
                () {
                  selecttednavigationitem = index;
                },
              );
            },
            items: [
              BottomNavigationBarItem(
                backgroundColor: AppColors.lowblack,
                icon: SizedBox(
                  child: Image.asset('assets/images/icon_home.png'),
                ),
                activeIcon: SizedBox(
                  height: 40,
                  width: 40,
                  child: Image.asset('assets/images/icon_active_home.png'),
                ),
                label: 'home',
              ),
              BottomNavigationBarItem(
                icon: SizedBox(
                  child:
                      Image.asset('assets/images/icon_search_navigation.png'),
                ),
                activeIcon: SizedBox(
                  height: 40,
                  width: 40,
                  child: Image.asset(
                      'assets/images/icon_search_navigation_active.png'),
                ),
                label: 'text',
              ),
              BottomNavigationBarItem(
                icon: SizedBox(
                  child: Image.asset('assets/images/icon_add_navigation.png'),
                ),
                activeIcon: SizedBox(
                  height: 40,
                  width: 40,
                  child: Image.asset(
                      'assets/images/icon_add_navigation_active.png'),
                ),
                label: 'text2',
              ),
              BottomNavigationBarItem(
                icon: SizedBox(
                  child:
                      Image.asset('assets/images/icon_activity_navigation.png'),
                ),
                activeIcon: SizedBox(
                  height: 40,
                  width: 40,
                  child: Image.asset(
                      'assets/images/icon_activity_navigation_active.png'),
                ),
                label: 'text3',
              ),
              BottomNavigationBarItem(
                icon: Container(
                  height: 35,
                  width: 35,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(
                        'assets/images/profile.jpeg',
                      ),
                    ),
                    borderRadius: BorderRadius.all(
                      Radius.circular(
                        10,
                      ),
                    ),
                  ),
                ),
                activeIcon: Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 2,
                      color: AppColors.red,
                    ),
                    image: const DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(
                        'assets/images/profile.jpeg',
                      ),
                    ),
                    borderRadius: const BorderRadius.all(
                      Radius.circular(
                        10,
                      ),
                    ),
                  ),
                ),
                label: 'text4',
              ),
            ],
          ),
        ),
      ),
      body: IndexedStack(
        index: selecttednavigationitem,
        children: screenslist(),
      ),
    );
  }
}

List<Widget> screenslist() {
  return <Widget>[
    const HomeScreen(),
    const SearchScreen(),
    const AddPostScreen(),
    const ActivityScreen(),
    const ProfileScreen(),
  ];
}
