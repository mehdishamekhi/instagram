import 'package:flutter/material.dart';
import 'package:instagram/constants/colors.dart';
import 'package:instagram/constants/fonts.dart';
import 'package:instagram/model/enums/activityenum.dart';
import 'package:instagram/widgets/story_profile_container.dart';

class ActivityScreen extends StatefulWidget {
  const ActivityScreen({super.key});

  @override
  State<ActivityScreen> createState() => _ActivityScreenState();
}

class _ActivityScreenState extends State<ActivityScreen>
    with SingleTickerProviderStateMixin {
  TabController? tabController;
  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.black,
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: 80,
              width: double.infinity,
              color: AppColors.black,
              child: TabBar(
                controller: tabController,
                indicatorColor: AppColors.red,
                indicatorWeight: 5,
                indicatorPadding: const EdgeInsets.symmetric(horizontal: 25),
                labelStyle: AppFonts.gb(fontsize: 22),
                unselectedLabelStyle: AppFonts.gb(fontsize: 18),
                unselectedLabelColor: const Color.fromRGBO(255, 255, 255, 0.5),
                tabs: const [
                  Tab(
                    text: 'you',
                  ),
                  Tab(
                    text: 'following',
                  ),
                ],
              ),
            ),
            Expanded(
              child: TabBarView(
                controller: tabController,
                children: [
                  youtabview(),
                  followingtabview(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget youtabview() {
    return CustomScrollView(
      slivers: <Widget>[
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.only(
              left: 25,
              top: 40,
              bottom: 25,
            ),
            child: Text(
              'New',
              style: AppFonts.gb(
                fontsize: 20,
              ),
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 18,
            ),
            child: Row(
              children: [
                Container(
                  height: 7,
                  width: 7,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: AppColors.red,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: StoryProfileContainer(),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Mehdi Shamekhi ',
                          style: AppFonts.gb(
                            fontsize: 14,
                          ),
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        Text(
                          'Started\n following',
                          style: AppFonts.gb(
                            fontsize: 12,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const Spacer(),
                getActionActivityBottom(ActivityStatus.message),
              ],
            ),
          ),
        ),
        const SliverPadding(
          padding: EdgeInsets.symmetric(
            vertical: 10,
          ),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 18,
            ),
            child: Row(
              children: [
                Container(
                  height: 7,
                  width: 7,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: AppColors.red,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: StoryProfileContainer(),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Mehdi Shamekhi ',
                          style: AppFonts.gb(
                            fontsize: 14,
                          ),
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        Text(
                          'Liked your \n post 10min',
                          style: AppFonts.gb(
                            fontsize: 12,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const Spacer(),
                getActionActivityBottom(ActivityStatus.like),
              ],
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.only(
              left: 25,
              top: 40,
              bottom: 25,
            ),
            child: Text(
              'Today',
              style: AppFonts.gb(
                fontsize: 20,
              ),
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 18,
            ),
            child: Row(
              children: [
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: StoryProfileContainer(),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Mehdi Shamekhi ',
                          style: AppFonts.gb(
                            fontsize: 14,
                          ),
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        Text(
                          'Started\n following',
                          style: AppFonts.gb(
                            fontsize: 12,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const Spacer(),
                getActionActivityBottom(ActivityStatus.follow),
              ],
            ),
          ),
        ),
        const SliverPadding(
          padding: EdgeInsets.symmetric(
            vertical: 10,
          ),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 18,
            ),
            child: Row(
              children: [
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: StoryProfileContainer(),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Mehdi Shamekhi ',
                          style: AppFonts.gb(
                            fontsize: 14,
                          ),
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        Text(
                          'Liked your \n post 10min',
                          style: AppFonts.gb(
                            fontsize: 12,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const Spacer(),
                getActionActivityBottom(ActivityStatus.like),
              ],
            ),
          ),
        ),
        const SliverPadding(
          padding: EdgeInsets.symmetric(
            vertical: 10,
          ),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 18,
            ),
            child: Row(
              children: [
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: StoryProfileContainer(),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Mehdi Shamekhi ',
                          style: AppFonts.gb(
                            fontsize: 14,
                          ),
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        Text(
                          'Started\n following',
                          style: AppFonts.gb(
                            fontsize: 12,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const Spacer(),
                getActionActivityBottom(ActivityStatus.follow),
              ],
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.only(
              left: 25,
              top: 40,
              bottom: 25,
            ),
            child: Text(
              'This week',
              style: AppFonts.gb(
                fontsize: 20,
              ),
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 18,
            ),
            child: Row(
              children: [
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: StoryProfileContainer(),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Mehdi Shamekhi ',
                          style: AppFonts.gb(
                            fontsize: 14,
                          ),
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        Text(
                          'Started\n following',
                          style: AppFonts.gb(
                            fontsize: 12,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        const SliverPadding(
          padding: EdgeInsets.symmetric(
            vertical: 10,
          ),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 18,
            ),
            child: Row(
              children: [
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: StoryProfileContainer(),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Mehdi Shamekhi ',
                          style: AppFonts.gb(
                            fontsize: 14,
                          ),
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        Text(
                          'Liked your \n post 10min',
                          style: AppFonts.gb(
                            fontsize: 12,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const Spacer(),
                getActionActivityBottom(ActivityStatus.like),
              ],
            ),
          ),
        ),
        const SliverPadding(
          padding: EdgeInsets.symmetric(
            vertical: 10,
          ),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 18,
            ),
            child: Row(
              children: [
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: StoryProfileContainer(),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Mehdi Shamekhi ',
                          style: AppFonts.gb(
                            fontsize: 14,
                          ),
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        Text(
                          'Started\n following',
                          style: AppFonts.gb(
                            fontsize: 12,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const Spacer(),
                getActionActivityBottom(ActivityStatus.message),
              ],
            ),
          ),
        ),
        const SliverPadding(
          padding: EdgeInsets.symmetric(
            vertical: 10,
          ),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 18,
            ),
            child: Row(
              children: [
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: StoryProfileContainer(),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Mehdi Shamekhi ',
                          style: AppFonts.gb(
                            fontsize: 14,
                          ),
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        Text(
                          'Started\n following',
                          style: AppFonts.gb(
                            fontsize: 12,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const Spacer(),
                getActionActivityBottom(ActivityStatus.follow),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget followingtabview() {
    return CustomScrollView(
      slivers: <Widget>[
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.only(
              left: 25,
              top: 40,
              bottom: 25,
            ),
            child: Text(
              'New',
              style: AppFonts.gb(
                fontsize: 20,
              ),
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 18,
            ),
            child: Row(
              children: [
                Container(
                  height: 7,
                  width: 7,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: AppColors.red,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: StoryProfileContainer(),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Mehdi Shamekhi ',
                          style: AppFonts.gb(
                            fontsize: 14,
                          ),
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        Text(
                          'Started\n following',
                          style: AppFonts.gb(
                            fontsize: 12,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const Spacer(),
                getActionActivityBottom(ActivityStatus.like),
              ],
            ),
          ),
        ),
        const SliverPadding(
          padding: EdgeInsets.symmetric(
            vertical: 10,
          ),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 18,
            ),
            child: Row(
              children: [
                Container(
                  height: 7,
                  width: 7,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: AppColors.red,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: StoryProfileContainer(),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Mehdi Shamekhi ',
                          style: AppFonts.gb(
                            fontsize: 14,
                          ),
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        Text(
                          'Liked your \n post 10min',
                          style: AppFonts.gb(
                            fontsize: 12,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const Spacer(),
                getActionActivityBottom(ActivityStatus.like),
              ],
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.only(
              left: 25,
              top: 40,
              bottom: 25,
            ),
            child: Text(
              'Today',
              style: AppFonts.gb(
                fontsize: 20,
              ),
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 18,
            ),
            child: Row(
              children: [
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: StoryProfileContainer(),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Mehdi Shamekhi ',
                          style: AppFonts.gb(
                            fontsize: 14,
                          ),
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        Text(
                          'Started\n following',
                          style: AppFonts.gb(
                            fontsize: 12,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const Spacer(),
                getActionActivityBottom(ActivityStatus.follow),
              ],
            ),
          ),
        ),
        const SliverPadding(
          padding: EdgeInsets.symmetric(
            vertical: 10,
          ),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 18,
            ),
            child: Row(
              children: [
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: StoryProfileContainer(),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Mehdi Shamekhi ',
                          style: AppFonts.gb(
                            fontsize: 14,
                          ),
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        Text(
                          'Liked your \n post 10min',
                          style: AppFonts.gb(
                            fontsize: 12,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const Spacer(),
                getActionActivityBottom(ActivityStatus.message),
              ],
            ),
          ),
        ),
        const SliverPadding(
          padding: EdgeInsets.symmetric(
            vertical: 10,
          ),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 18,
            ),
            child: Row(
              children: [
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: StoryProfileContainer(),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Mehdi Shamekhi ',
                          style: AppFonts.gb(
                            fontsize: 14,
                          ),
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        Text(
                          'Started\n following',
                          style: AppFonts.gb(
                            fontsize: 12,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const Spacer(),
                getActionActivityBottom(ActivityStatus.follow),
              ],
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.only(
              left: 25,
              top: 40,
              bottom: 25,
            ),
            child: Text(
              'This week',
              style: AppFonts.gb(
                fontsize: 20,
              ),
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 18,
            ),
            child: Row(
              children: [
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: StoryProfileContainer(),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Mehdi Shamekhi ',
                          style: AppFonts.gb(
                            fontsize: 14,
                          ),
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        Text(
                          'Started\n following',
                          style: AppFonts.gb(
                            fontsize: 12,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        const SliverPadding(
          padding: EdgeInsets.symmetric(
            vertical: 10,
          ),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 18,
            ),
            child: Row(
              children: [
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: StoryProfileContainer(),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Mehdi Shamekhi ',
                          style: AppFonts.gb(
                            fontsize: 14,
                          ),
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        Text(
                          'Liked your \n post 10min',
                          style: AppFonts.gb(
                            fontsize: 12,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const Spacer(),
                getActionActivityBottom(ActivityStatus.like),
              ],
            ),
          ),
        ),
        const SliverPadding(
          padding: EdgeInsets.symmetric(
            vertical: 10,
          ),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 18,
            ),
            child: Row(
              children: [
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: StoryProfileContainer(),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Mehdi Shamekhi ',
                          style: AppFonts.gb(
                            fontsize: 14,
                          ),
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        Text(
                          'Started\n following',
                          style: AppFonts.gb(
                            fontsize: 12,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const Spacer(),
                getActionActivityBottom(ActivityStatus.like)
              ],
            ),
          ),
        ),
        const SliverPadding(
          padding: EdgeInsets.symmetric(
            vertical: 10,
          ),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 18,
            ),
            child: Row(
              children: [
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: StoryProfileContainer(),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Mehdi Shamekhi ',
                          style: AppFonts.gb(
                            fontsize: 14,
                          ),
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        Text(
                          'Started\n following',
                          style: AppFonts.gb(
                            fontsize: 12,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const Spacer(),
                getActionActivityBottom(ActivityStatus.follow),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget getActionActivityBottom(ActivityStatus status) {
    switch (status) {
      case ActivityStatus.follow:
        return ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.red,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          onPressed: () {},
          child: Text(
            'Follow',
            style: AppFonts.gb(fontsize: 14),
          ),
        );
      case ActivityStatus.like:
        return Container(
          width: 40,
          height: 40,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: const DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(
                'assets/images/item0.png',
              ),
            ),
          ),
        );
      case ActivityStatus.message:
        return ElevatedButton(
          style: ElevatedButton.styleFrom(
            side: const BorderSide(
              width: 3,
              color: Colors.white,
            ),
            backgroundColor: AppColors.black,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          onPressed: () {},
          child: Text(
            'Message',
            style: AppFonts.gb(fontsize: 14),
          ),
        );
      default:
        return const SizedBox();
    }
  }
}
