import 'package:e_pharmacy/error_screen.dart';
import 'package:e_pharmacy/master_layout.dart';
import 'package:e_pharmacy/pages/home/home_tab.dart';
import 'package:e_pharmacy/pages/login/loading_screen.dart';
import 'package:e_pharmacy/pages/login/login_tab.dart';
import 'package:e_pharmacy/providers/auth_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

final GlobalKey<NavigatorState> rootNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'root');
final GlobalKey<NavigatorState> shellNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'shell');
final routerProvider = Provider<GoRouter>(
  (ref) {
    final authState = ref.watch(authStateProvider);
    return GoRouter(
      navigatorKey: rootNavigatorKey,
      initialLocation: '/login',
      // authState.when(
      //     data: (user) => user == null ? '/' : '/homeTab',
      //     error: (error, stack) => '/errorScreen',
      //     loading: () => '/loadingScreen'),
      routes: [
        ShellRoute(
          navigatorKey: shellNavigatorKey,
          builder: (BuildContext context, GoRouterState state, Widget child) {
            return MasterLayout(child: child);
          },
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
                name: 'loadingScreen',
                path: '/loadingScreen',
                pageBuilder: (context, state) {
                  return const MaterialPage(child: LoadingScreen());
                }),
            GoRoute(
                name: 'errorScreen',
                path: '/errorScreen',
                pageBuilder: (context, state) {
                  return const MaterialPage(child: ErrorScreen());
                }),
          ],
        ),
        // GoRoute(
        //     name: 'login',
        //     path: '/',
        //     pageBuilder: (context, state) {
        //       return const MaterialPage(child: LoginTab());
        //     }),
        // GoRoute(
        //     name: 'homeTab',
        //     path: '/homeTab',
        //     pageBuilder: (context, state) {
        //       return const MaterialPage(child: HomeTab());
        //     }),
        // GoRoute(
        //     name: 'loadingScreen',
        //     path: '/loadingScreen',
        //     pageBuilder: (context, state) {
        //       return const MaterialPage(child: LoadingScreen());
        //     }),
        // GoRoute(
        //     name: 'errorScreen',
        //     path: '/errorScreen',
        //     pageBuilder: (context, state) {
        //       return const MaterialPage(child: ErrorScreen());
        //     }),
      ],
    );
  },
);
