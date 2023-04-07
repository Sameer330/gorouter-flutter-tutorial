import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:gorouter_tutorial/pages/home.dart';
import 'package:gorouter_tutorial/pages/about.dart';
import 'package:gorouter_tutorial/pages/profile.dart';
import 'package:gorouter_tutorial/pages/contactus.dart';
import 'package:gorouter_tutorial/pages/error_page.dart';
import 'package:gorouter_tutorial/project/routes/app_route_constants.dart';

class AuthBool {
  bool isAuth = false;
}

class MyAppRouter {
  late final bool isAuth;

  static GoRouter returnRouter(bool isAuth) {
    GoRouter router = GoRouter(
      routes: [
        GoRoute(
          name: MyAppRouteConstants.homeRouteName,
          path: "/",
          pageBuilder: (context, state) {
            return const MaterialPage(child: Home());
          },
        ),
        GoRoute(
          name: MyAppRouteConstants.profileRouteName,
          path: "/profile/:username/:userid",
          pageBuilder: (context, state) {
            return MaterialPage(
              child: Profile(
                username: state.params['username']!,
                userid: state.params['userid']!,
              ),
            );
          },
        ),
        GoRoute(
          name: MyAppRouteConstants.aboutRouteName,
          path: "/about",
          pageBuilder: (context, state) {
            return const MaterialPage(child: About());
          },
        ),
        GoRoute(
          name: MyAppRouteConstants.contactUsRouteName,
          path: "/contactus",
          pageBuilder: (context, state) {
            return const MaterialPage(child: ContactUs());
          },
        ),
      ],
      errorPageBuilder: (context, state) {
        return const MaterialPage(
          child: Error(),
        );
      },
      redirect: (context, state) {
        if (!isAuth &&
            state.location
                .startsWith('/${MyAppRouteConstants.profileRouteName}')) {
          return context.namedLocation(MyAppRouteConstants.contactUsRouteName);
        } else {
          return null;
        }
      },
    );
    return router;
  }
}
