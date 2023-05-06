import 'package:flutter/material.dart';
import 'package:pertemuan_v/models/user.dart';
import 'package:pertemuan_v/modules/home_screen/fragments/home_fragment/home_fragment_widgets.dart';

// import 'home_fragment_widgets.dart';

class HomeFragment extends StatefulWidget {
  const HomeFragment({
    super.key,
    required this.user,
    required this.homeScaffold,
  });
  final User user;
  final GlobalKey<ScaffoldState> homeScaffold;

  @override
  State<HomeFragment> createState() => _HomeFragmentState();
}

class News {
  final String id;
  final String title;
  final String content;
  final String imagePath;

  News({
    required this.id,
    required this.title,
    required this.content,
    required this.imagePath,
  });
}

class _HomeFragmentState extends State<HomeFragment> {
  late Size size;
  final List<News> newsList = [
    News(
      id: '1',
      title: 'Lorem ipsum dolor sit amet',
      content:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam vel tincidunt purus, non bibendum tellus. Integer tincidunt nulla non justo sodales bibendum. In eget dolor nec odio euismod tempor. In interdum vitae neque a tristique. Suspendisse laoreet tincidunt velit, sed euismod dolor luctus sit amet. Sed eget risus eros. ',
      imagePath:
          'https://awsimages.detik.net.id/community/media/visual/2017/12/06/6414c1ae-fcd1-49a6-8316-4a71c29f93ff_43.jpg?w=700&q=90',
    ),
    News(
      id: '2',
      title: 'Sed ac interdum purus',
      content:
          'Sed ac interdum purus, quis efficitur odio. Aliquam tincidunt pretium dolor, auctor tincidunt turpis sagittis vitae. Integer facilisis velit id sapien tincidunt ultricies. Nam vel nisi dictum, interdum ex a, euismod libero. Aliquam at ultricies magna. Sed luctus metus sed purus finibus malesuada. Donec venenatis vehicula ante, ac luctus enim luctus sit amet.',
      imagePath:
          'https://images.unsplash.com/photo-1631022659774-a0a308a69b7c?ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw2MXx8fHxlbnwwfHx8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60',
    ),
    News(
      id: '3',
      title: 'Sed ac interdum purus',
      content:
          'Sed ac interdum purus, quis efficitur odio. Aliquam tincidunt pretium dolor, auctor tincidunt turpis sagittis vitae. Integer facilisis velit id sapien tincidunt ultricies. Nam vel nisi dictum, interdum ex a, euismod libero. Aliquam at ultricies magna. Sed luctus metus sed purus finibus malesuada. Donec venenatis vehicula ante, ac luctus enim luctus sit amet.',
      imagePath:
          'https://images.unsplash.com/photo-1631022659774-a0a308a69b7c?ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw2MXx8fHxlbnwwfHx8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).padding.top,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 16,
            ),
            child: HomeFragmentWidget.header(
              user: widget.user,
              homeScaffoldState: widget.homeScaffold,
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 16,
            ),
            child: HomeFragmentWidget.searchField(),
          ),
          const SizedBox(
            height: 16,
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                    ),
                    child: HomeFragmentWidget.sectionTitle(
                      "Berita terkini",
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                    ),
                    child: HomeFragmentWidget.hotestNewsCard(
                      size,
                      "https://picsum.photos/1080/690",
                      "Maikan Game console Sekarang",
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    child: SectionTitle(
                      label: "Latest News",
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                    ),
                    child: HomeFragmentWidget.latestNewsSection(
                      size,
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
