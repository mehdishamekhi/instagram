import 'package:flutter/material.dart';
import 'package:instagram/constants/colors.dart';
import 'package:instagram/constants/fonts.dart';

import '../widgets/story_profile_add_container.dart';
import '../widgets/story_profile_container.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.black,
      body: DefaultTabController(
        length: 2,
        child: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return [
              SliverAppBar(
                bottom: PreferredSize(
                  preferredSize: const Size.fromHeight(20),
                  child: Container(
                    height: 20,
                    decoration: const BoxDecoration(
                      color: AppColors.black,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                      ),
                    ),
                  ),
                ),
                backgroundColor: AppColors.black,
                actions: const [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Icon(
                      Icons.reorder,
                      size: 30,
                    ),
                  ),
                ],
                expandedHeight: 200,
                pinned: true,
                floating: true,
                flexibleSpace: FlexibleSpaceBar(
                  background: Image.asset(
                    'assets/images/item0.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SliverToBoxAdapter(
                child: headofhead(),
              ),
              SliverPersistentHeader(
                delegate: TabBarviewDelegate(
                  const TabBar(
                    indicatorColor: AppColors.red,
                    indicatorWeight: 4,
                    indicatorPadding: EdgeInsets.symmetric(horizontal: 25),
                    tabs: [
                      Icon(
                        Icons.image,
                        size: 40,
                      ),
                      Icon(
                        Icons.bookmark,
                        size: 35,
                      ),
                    ],
                  ),
                ),
              ),
            ];
          },
          body: TabBarView(
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: CustomScrollView(
                  slivers: <Widget>[
                    SliverGrid(
                      delegate: SliverChildBuilderDelegate(
                        (context, index) {
                          return Container(
                            height: 60,
                            width: 60,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage(
                                  'assets/images/item$index.png',
                                ),
                              ),
                            ),
                          );
                        },
                        childCount: 10,
                      ),
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        mainAxisSpacing: 10,
                        crossAxisSpacing: 10,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: CustomScrollView(
                  slivers: <Widget>[
                    SliverGrid(
                      delegate: SliverChildBuilderDelegate(
                        (context, index) {
                          return Container(
                            height: 60,
                            width: 60,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage(
                                  'assets/images/item$index.png',
                                ),
                              ),
                            ),
                          );
                        },
                        childCount: 10,
                      ),
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        mainAxisSpacing: 10,
                        crossAxisSpacing: 10,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Padding headofhead() {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 10,
      ),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                height: 80,
                width: 80,
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 3,
                    color: AppColors.red,
                  ),
                  borderRadius: BorderRadius.circular(15),
                  image: const DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(
                      'assets/images/profile.jpeg',
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Mehdi Shamekhi',
                    style: AppFonts.gb(
                      fontsize: 20,
                    ),
                  ),
                  Text(
                    'Flutter Developer',
                    style: AppFonts.gb(
                      fontsize: 17,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
              const Spacer(),
              const Icon(
                Icons.edit_square,
                color: Colors.white,
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            'flutter developer,always learning ,you can find my project source code in : ',
            style: AppFonts.gb(fontsize: 18),
          ),
          Text(
            'github.com/mehdishamekhi',
            style: AppFonts.gb(fontsize: 18),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              const Icon(
                Icons.telegram,
                size: 25,
                color: Colors.white,
              ),
              const SizedBox(
                width: 10,
              ),
              Text(
                'https://t.me/mehdi_shamekhi',
                style: AppFonts.gb(
                  fontsize: 18,
                  color: Colors.blue,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              const Icon(
                Icons.email,
                size: 25,
                color: Colors.white,
              ),
              const SizedBox(
                width: 10,
              ),
              Text(
                'mehdi.shamekhi22@gmail.com',
                style: AppFonts.gb(
                  fontsize: 18,
                  color: AppColors.red,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              const Icon(
                Icons.business_center_outlined,
                size: 25,
                color: Colors.white,
              ),
              const SizedBox(
                width: 10,
              ),
              Text(
                'developer',
                style: AppFonts.gb(fontsize: 25),
              ),
              const SizedBox(
                width: 20,
              ),
              const Icon(
                Icons.location_on,
                size: 25,
                color: Colors.white,
              ),
              const SizedBox(
                width: 10,
              ),
              Text(
                'Iran',
                style: AppFonts.gb(fontsize: 25),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Text(
                '10',
                style: AppFonts.gb(
                  fontsize: 20,
                  color: Colors.white,
                ),
              ),
              const SizedBox(
                width: 5,
              ),
              Text(
                'posts',
                style: AppFonts.gb(
                  fontsize: 15,
                  color: Colors.grey,
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Text(
                '125.43K',
                style: AppFonts.gb(
                  fontsize: 20,
                  color: Colors.white,
                ),
              ),
              const SizedBox(
                width: 5,
              ),
              Text(
                'followers',
                style: AppFonts.gb(
                  fontsize: 15,
                  color: Colors.grey,
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Text(
                '140',
                style: AppFonts.gb(
                  fontsize: 20,
                  color: Colors.white,
                ),
              ),
              const SizedBox(
                width: 5,
              ),
              Text(
                'following',
                style: AppFonts.gb(
                  fontsize: 15,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(180, 45),
                  backgroundColor: AppColors.red,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                onPressed: () {},
                child: Text(
                  'Follow',
                  style: AppFonts.gb(
                    fontsize: 20,
                  ),
                ),
              ),
              const Spacer(),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  side: const BorderSide(
                    width: 3,
                    color: Colors.white,
                  ),
                  minimumSize: const Size(180, 45),
                  backgroundColor: AppColors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                onPressed: () {},
                child: Text(
                  'Message',
                  style: AppFonts.gb(
                    fontsize: 20,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            height: 100,
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
                              height: 7,
                            ),
                            Text(
                              'user',
                              style: AppFonts.gb(
                                fontsize: 14,
                              ),
                            )
                          ],
                        ),
                );
              },
            ),
          ),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}

class TabBarviewDelegate extends SliverPersistentHeaderDelegate {
  TabBarviewDelegate(this.tabBar);
  final TabBar tabBar;
  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return tabBar;
  }

  @override
  double get maxExtent => tabBar.preferredSize.height;

  @override
  double get minExtent => tabBar.preferredSize.height;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return false;
  }
}
