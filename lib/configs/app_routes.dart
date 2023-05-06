  import 'package:flutter/material.dart';
  import 'package:go_router/go_router.dart';
  import 'package:pertemuan_v/models/user.dart';
  import 'package:pertemuan_v/modules/home_screen/fragments/news_fragment/news_fragment.dart';
  import 'package:pertemuan_v/modules/home_screen/home_screen.dart';
  import 'package:pertemuan_v/modules/news_detail_screen/news_detail_screen.dart';
  import 'package:pertemuan_v/modules/splash_screen/splash_screen.dart';
  import 'package:pertemuan_v/modules/profile_detail_screen/profile_detail_screen.dart';
  class AppRoutes {
    static const String splash = "splash";
    static const String home = "home";
    static const String news = "news";
    static const String newsDetail = "news-detail";
    static const String profileDetail = "profile-detail";
    static Page _splashScreenBuilder(
        BuildContext context, GoRouterState state) {
      return const MaterialPage(child: SplashScreen());
    }

    static Page _homeScreenBuilder(
        BuildContext context, GoRouterState state) {
      User user =
          state.extra as User? ?? User(id: 002, name: "kelompok 5 C ", email: '', username: '');
      return MaterialPage(
        child: HomeScreen(
          user: user,
        ),
      );
    }

    static Page _newsScreenBuilder(
        BuildContext context, GoRouterState state) {
      return MaterialPage(child: NewsFragment());
    }

    static Page _newsDetailScreenBuilder(
    BuildContext context,
    GoRouterState state,
    ) {
      final id = state.params['id'];

      
      return MaterialPage(
        child: NewsDetailScreen(
          id: id ?? '1', content: '', image: '', title: '', newsId: '', // menggunakan nilai default jika tidak ada id yang diberikan
          
        )
      );
    }
    static Page _profileScreenBuilder(BuildContext context, GoRouterState state) {
      late User user;

      if (state.extra != null && state.extra is User) {
        user = state.extra as User;
      } else {
        user = User.dummy();
      }

      return MaterialPage(
        child: ProfileDetailScreen(user: user),
      );
    }

    static final GoRouter goRouter = GoRouter(
      routes: [
        GoRoute(
          name: splash,
          path: "/splash",
          pageBuilder: _splashScreenBuilder,
        ),
        GoRoute(
          name: home,
          path: "/home",
          pageBuilder: _homeScreenBuilder,
          routes: [
            GoRoute(
              name: news,
              path: "news",
              pageBuilder: _newsScreenBuilder,
            ),
              GoRoute(
              name: newsDetail,
              path: "news-detail:id",
              pageBuilder: _newsDetailScreenBuilder,
            ),
            GoRoute(
            name: profileDetail,
            path: "profile-detail",
            pageBuilder: _profileScreenBuilder,
          ),
          ],
        ),
      ],
      initialLocation: "/splash",
    );
  }
