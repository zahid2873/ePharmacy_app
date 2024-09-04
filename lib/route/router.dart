import 'package:e_pharmacy/error_screen.dart';
import 'package:e_pharmacy/pages/home/home_tab.dart';
import 'package:e_pharmacy/pages/login/controller/authentication_controller.dart';
import 'package:e_pharmacy/pages/login/forgetPassword/forget_password_tab.dart';
import 'package:e_pharmacy/pages/login/login_tab.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

final GlobalKey<NavigatorState> rootNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'root');
final GlobalKey<NavigatorState> shellNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'shell');
final routerProvider = Provider<GoRouter>(
  (ref) {
    final authState = ref.watch(authProvider);
    String getInitialPath() {
      if (authState.status == AuthenticationStatus.authenticated) {
        return '/homeTab';
      } else if (authState.status == AuthenticationStatus.unauthenticated) {
        return '/login';
      } else {
        return '/login';
      }
    }

    return GoRouter(
      navigatorKey: rootNavigatorKey,
      initialLocation: getInitialPath(),
      routes: [
        GoRoute(
            name: 'login',
            path: '/login',
            pageBuilder: (context, state) {
              return const MaterialPage(child: LoginTab());
            }),
        GoRoute(
            name: 'homeTab',
            path: '/homeTab',
            pageBuilder: (context, state) {
              return const MaterialPage(child: HomeTab());
            }),
        GoRoute(
            name: 'forgetPassword',
            path: '/forgetPassword',
            pageBuilder: (context, state) {
              return MaterialPage(child: ForgetPasswordTab());
            }),
        GoRoute(
            name: 'errorScreen',
            path: '/errorScreen',
            pageBuilder: (context, state) {
              return const MaterialPage(child: ErrorScreen());
            }),
      ],
    );
  },
);
