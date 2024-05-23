import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:sagara_coding_card_application/presentation/pages/collection_screen_page.dart';
import 'package:sagara_coding_card_application/presentation/pages/detail_collection_screen_page.dart';
import 'package:sagara_coding_card_application/presentation/pages/detail_scanner_screen_page.dart';
import 'package:sagara_coding_card_application/presentation/pages/forgot_password_screen_page.dart';
import 'package:sagara_coding_card_application/presentation/pages/leaderboard_screen_page.dart';
import 'package:sagara_coding_card_application/presentation/pages/quiz_loading_screen_page.dart';
import 'package:sagara_coding_card_application/presentation/pages/onboarding_screen_page.dart';
import 'package:sagara_coding_card_application/presentation/pages/quiz_card_screen_page.dart';
import 'package:sagara_coding_card_application/presentation/pages/quiz_done_page.dart';
import 'package:sagara_coding_card_application/presentation/pages/quiz_game_screen_page.dart';
import 'package:sagara_coding_card_application/presentation/pages/reset_password_screen_page.dart';
import 'package:sagara_coding_card_application/presentation/pages/scanner_screen_page.dart';
import 'package:sagara_coding_card_application/presentation/pages/verification_screen_page.dart';
import 'package:sagara_coding_card_application/presentation/utils/constant/router_constant.dart';

import '../pages/home_screen_page.dart';
import '../pages/login_screen_page.dart';
import '../pages/profile_screen_page.dart';
import '../pages/register_screen_page.dart';
import '../pages/splash_screen_page.dart';
import '../widgets/navbar_bottom_widget.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>();

final _rootNavigatorHome = GlobalKey<NavigatorState>(debugLabel: 'shellHome');
final _rootNavigatorCollection = GlobalKey<NavigatorState>(debugLabel: 'shellCollection');
final _rootNavigatorLeaderboard = GlobalKey<NavigatorState>(debugLabel: 'shellLeaderboard');
final _rootNavigatorProfile = GlobalKey<NavigatorState>(debugLabel: 'shellProfile');

class AppRouter {
  static final GoRouter router = GoRouter(
    initialLocation: '/splash',
    navigatorKey: _rootNavigatorKey,
    routes: [
      GoRoute(
        parentNavigatorKey: _rootNavigatorKey,
        path: '/splash',
        name: RouterConstant.splash,
        pageBuilder: (context, state) => MaterialPage(
          key: state.pageKey,
          child: const SplashScreenPage(),
        ),
      ),
      GoRoute(
        parentNavigatorKey: _rootNavigatorKey,
        path: '/onboarding',
        name: RouterConstant.onboarding,
        builder: (context, state) => const OnboardingScreenPage(),
      ),
      GoRoute(
        parentNavigatorKey: _rootNavigatorKey,
        path: '/login',
        name: RouterConstant.login,
        builder: (context, state) => const LoginScreenPage(),
      ),
      GoRoute(
        parentNavigatorKey: _rootNavigatorKey,
        path: '/register',
        name: RouterConstant.register,
        builder: (context, state) => const RegisterScreenPage(),
      ),
      GoRoute(
        parentNavigatorKey: _rootNavigatorKey,
        path: '/forgot_password',
        name: RouterConstant.forgotPassword,
        builder: (context, state) => const ForgotPasswordScreenPage(),
      ),
      GoRoute(
        parentNavigatorKey: _rootNavigatorKey,
        path: '/reset_password',
        name: RouterConstant.resetPassword,
        pageBuilder: (context, state) => MaterialPage(
          child: const ResetPasswordScreenPage(),
          key: state.pageKey,
        ),
      ),
      GoRoute(
        parentNavigatorKey: _rootNavigatorKey,
        path: '/verification',
        name: RouterConstant.verification,
        builder: (context, state) => const VerificationScreenPage(),
      ),
      StatefulShellRoute.indexedStack(
        builder: (context, state, navigationShell) {
          return NavigationBottomWidget(navigationShell: navigationShell);
        },
        branches: [
          StatefulShellBranch(
            navigatorKey: _rootNavigatorHome,
            routes: [
              GoRoute(
                path: '/home',
                name: RouterConstant.home,
                builder: (context, state) => HomeScreenPage(
                  key: state.pageKey,
                ),
              ),
            ],
          ),
          StatefulShellBranch(
            navigatorKey: _rootNavigatorCollection,
            routes: [
              GoRoute(
                path: '/collection',
                name: RouterConstant.collection,
                builder: (context, state) => CollectionScreenPage(
                  key: state.pageKey,
                ),
                routes: [
                  GoRoute(
                    parentNavigatorKey: _rootNavigatorKey,
                    path: 'detail_collection/:id',
                    name: RouterConstant.detailCollection,
                    pageBuilder: (context, state) {
                      final id = int.tryParse(state.pathParameters['id'] ?? '') ?? -1;
                      return MaterialPage(
                        child: DetailsCollectionScreenPage(id: id),
                        key: state.pageKey,
                      );
                    },
                  ),
                ],
              ),
            ],
          ),
          StatefulShellBranch(
            navigatorKey: _rootNavigatorLeaderboard,
            routes: [
              GoRoute(
                path: '/leaderboard',
                name: RouterConstant.leaderboard,
                builder: (context, state) => LeaderboardScreenPage(
                  key: state.pageKey,
                ),
              ),
            ],
          ),
          StatefulShellBranch(
            navigatorKey: _rootNavigatorProfile,
            routes: [
              GoRoute(
                path: '/profile',
                name: RouterConstant.profile,
                builder: (context, state) => ProfileScreenPage(
                  key: state.pageKey,
                ),
              ),
            ],
          ),
        ],
      ),
      GoRoute(
        parentNavigatorKey: _rootNavigatorKey,
        path: '/scanner',
        name: RouterConstant.scanner,
        builder: (context, state) => const ScannerScreenPage(),
      ),
      GoRoute(
        parentNavigatorKey: _rootNavigatorKey,
        path: '/detail_scanner',
        name: RouterConstant.detailScanner,
        builder: (context, state) => DetailScannerScreenPage(
          key: state.pageKey,
          id: state.extra as int,
        ),
      ),
      GoRoute(
        parentNavigatorKey: _rootNavigatorKey,
        path: '/quiz_card',
        name: RouterConstant.quizCard,
        builder: (context, state) => const QuizCardScreenPage(),
      ),
      GoRoute(
        parentNavigatorKey: _rootNavigatorKey,
        path: '/quiz_loading',
        name: RouterConstant.quizLoading,
        builder: (context, state) => const LoadingQuizScreenPage(),
      ),
      GoRoute(
        parentNavigatorKey: _rootNavigatorKey,
        path: '/quiz_game',
        name: RouterConstant.quizGame,
        builder: (context, state) => const QuizGameScreenPage(),
      ),
      GoRoute(
        parentNavigatorKey: _rootNavigatorKey,
        path: '/quiz_done/:timeRemaining/:totalPoints/:totalQuestion',
        name: RouterConstant.quizDone,
        pageBuilder: (context, state) {
          final timeRemaining = state.pathParameters['timeRemaining'] ?? '';
          final totalPoints = state.pathParameters['totalPoints'] ?? '';
          final totalQuestion = state.pathParameters['totalQuestion'] ?? '';
          return MaterialPage(
            child: QuizDonePage(
              timeRemaining: timeRemaining,
              totalPoints: totalPoints,
              totalQuestion: totalQuestion,
            ),
            key: state.pageKey,
          );
        },
      ),
    ],
  );
}
