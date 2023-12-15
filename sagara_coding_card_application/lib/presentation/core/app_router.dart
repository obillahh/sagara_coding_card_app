import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:sagara_coding_card_application/presentation/pages/onboarding_screen_page.dart';
import 'package:sagara_coding_card_application/presentation/pages/verification_scren_page.dart';
import 'package:sagara_coding_card_application/presentation/utils/router_constant.dart';

import '../pages/login_screen_page.dart';
import '../pages/register_screen_page.dart';
import '../pages/splash_screen_page.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>();

final GoRouter router = GoRouter(
  initialLocation: '/login',
  navigatorKey: _rootNavigatorKey,
  routes: [
    GoRoute(
      parentNavigatorKey: _rootNavigatorKey,
      path: '/splash',
      name: RouterConstant.splash,
      builder: (context, state) => const SplashScreenPage(),
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
      path: '/verification',
      name: RouterConstant.verification,
      builder: (context, state) => const VerificationScreenPage(),
    ),
  ],
);
