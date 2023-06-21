import 'package:flutter/material.dart';
import 'package:instagram/constants/colors.dart';
import 'package:instagram/constants/fonts.dart';
import 'package:instagram/widgets/story_profile_container.dart';

class DirectScreen extends StatelessWidget {
  const DirectScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.black,
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            pinned: true,
            backgroundColor: AppColors.black,
            leading: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: const Icon(
                Icons.arrow_back_rounded,
                size: 45,
              ),
            ),
            title: Text(
              'mehdi.shamkehi',
              style: AppFonts.gb(fontsize: 25),
            ),
            actions: const [
              Icon(
                Icons.video_call_outlined,
                size: 40,
              ),
              SizedBox(
                width: 20,
              ),
              Icon(
                Icons.edit_square,
                size: 25,
              ),
              SizedBox(
                width: 15,
              ),
            ],
          ),
          SliverToBoxAdapter(
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              height: 40,
              width: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: const Color.fromRGBO(255, 255, 255, 0.75),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                ),
                child: Row(
                  children: [
                    const Icon(
                      Icons.search,
                      size: 35,
                      color: Color.fromRGBO(0, 0, 0, 0.5),
                    ),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          enabledBorder: InputBorder.none,
                          disabledBorder: InputBorder.none,
                          hintText: 'Search',
                          hintStyle: AppFonts.gb(
                            fontsize: 18,
                            color: const Color.fromRGBO(0, 0, 0, 0.5),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(
                    children: [
                      Container(
                        height: 80,
                        width: 80,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: AssetImage(
                              'assets/images/profile.jpeg',
                            ),
                          ),
                        ),
                      ),
                      Container(
                        height: 30,
                        width: 30,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color.fromRGBO(255, 255, 255, 0.75),
                        ),
                        child: const Center(
                          child: Icon(
                            Icons.add,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Text(
                    'Your note',
                    textAlign: TextAlign.end,
                    style: AppFonts.gb(
                      fontsize: 15,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Row(
                children: [
                  Text(
                    'Messages',
                    style: AppFonts.gb(fontsize: 22),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  const Icon(
                    Icons.error_outline,
                    size: 20,
                    color: Colors.white,
                  ),
                  const Spacer(),
                  Text(
                    'Requests',
                    style: AppFonts.gb(
                      fontsize: 22,
                      color: Colors.blue,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SliverGrid(
            delegate: SliverChildBuilderDelegate(
              childCount: 20,
              (context, index) {
                return messagecontent();
              },
            ),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              mainAxisExtent: 100,
              crossAxisCount: 1,
            ),
          ),
        ],
      ),
    );
  }

  Padding messagecontent() {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 5,
      ),
      child: Row(
        children: [
          const StoryProfileContainer(),
          const SizedBox(
            width: 15,
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Mehdi shamekhi',
                style: AppFonts.gb(),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                'Seen Sunday  . 3d',
                style: AppFonts.gb(
                  color: const Color.fromARGB(75, 202, 195, 195),
                ),
              ),
            ],
          ),
          const Spacer(),
          const Icon(
            Icons.camera_alt_outlined,
            size: 30,
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}
