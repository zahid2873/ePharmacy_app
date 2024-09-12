import 'package:e_pharmacy/master_layout.dart';
import 'package:e_pharmacy/pages/favorite/favorite_tab.dart';
import 'package:e_pharmacy/pages/home/home_tab.dart';
import 'package:e_pharmacy/pages/login/controller/authentication_controller.dart';
import 'package:e_pharmacy/pages/login/forgetPassword/forget_password_tab.dart';
import 'package:e_pharmacy/pages/login/login_tab.dart';
import 'package:e_pharmacy/pages/productDetails/product_details.dart';
import 'package:e_pharmacy/pages/productReview/product_review_tab.dart';
import 'package:e_pharmacy/pages/profile/profile_tab.dart';
import 'package:e_pharmacy/pages/profile/update_profile.dart';
import 'package:e_pharmacy/pages/store/store_tab.dart';
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
        return '/';
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
            name: 'forgetPassword',
            path: '/forgetPassword',
            pageBuilder: (context, state) {
              return MaterialPage(child: ForgetPasswordTab());
            }),
            GoRoute(
            name: 'productDetails',
            path: '/productDetails',
            pageBuilder: (context, state) {
              return const MaterialPage(child: ProductDetails());
            }),
             GoRoute(
            name: 'review',
            path: '/review',
            pageBuilder: (context, state) {
              return const MaterialPage(child: ProductReviewTab());
            }),
        ShellRoute(
            navigatorKey: shellNavigatorKey,
            builder: (context, state, child) =>
                MasterLayout(key: state.pageKey, child: child),
            routes: [
              GoRoute(
                name: 'home',
                path: '/',
                pageBuilder: (context, state) {
                  return const NoTransitionPage(child: HomeTab());
                },
              ),
              GoRoute(
                  name: 'store',
                  path: '/store',
                  pageBuilder: (context, state) {
                    return const NoTransitionPage(child: StoreTab());
                  }),
              GoRoute(
                  name: 'favorite',
                  path: '/favorite',
                  pageBuilder: (context, state) {
                    return const NoTransitionPage(child: FavoriteTab());
                  }),
              GoRoute(
                  name: 'profile',
                  path: '/profile',
                  pageBuilder: (context, state) {
                    return const NoTransitionPage(child: ProfileTab());
                  },
                  routes: [
                    GoRoute(
                        name: 'updateProfile',
                        path: 'updateProfile',
                        pageBuilder: (context, state) {
                          return const NoTransitionPage(child: UpdateProfile());
                        }),
                  ]),
            ]),
      ],
    );
  },
);
