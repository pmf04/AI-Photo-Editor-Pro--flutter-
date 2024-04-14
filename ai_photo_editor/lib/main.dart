import 'package:ai_photo_editor/Pages/HomeScreen.dart';
import 'package:ai_photo_editor/Pages/ImageGenerator.dart';
import 'package:ai_photo_editor/Pages/components/scaffoldWithNavBar.dart';
import 'package:ai_photo_editor/Pages/profile.dart';
import 'package:ai_photo_editor/Pages/tmp.dart';
import 'package:ai_photo_editor/Pages/tools/removeBackground.dart';
import 'package:cloudinary_flutter/cloudinary_context.dart';
import 'package:cloudinary_url_gen/cloudinary.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

final GlobalKey<NavigatorState> _rootNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'root');
final GlobalKey<NavigatorState> _sectionANavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'sectionANav');

void main() {
  CloudinaryContext.cloudinary =
      Cloudinary.fromCloudName(cloudName: 'dqnihp6fn');
  runApp(AIPhotoEditor());
}

class AIPhotoEditor extends StatelessWidget {
  AIPhotoEditor({super.key});

  final GoRouter _router = GoRouter(
    navigatorKey: _rootNavigatorKey,
    initialLocation: '/Home',
    routes: <RouteBase>[
      StatefulShellRoute.indexedStack(
        builder: (BuildContext context, GoRouterState state,
            StatefulNavigationShell navigationShell) {
          return ScaffoldWithNavBar(navigationShell: navigationShell);
        },
        branches: <StatefulShellBranch>[
          StatefulShellBranch(
            navigatorKey: _sectionANavigatorKey,
            routes: <RouteBase>[
              GoRoute(
                // The screen to display as the root in the first tab of the
                // bottom navigation bar.
                path: '/Home',
                builder: (BuildContext context, GoRouterState state) =>
                    // const RootScreen(
                    //     label: 'Home', detailsPath: '/Home/RemoveBackground'),
                    HomeScreen(),
                routes: <RouteBase>[
                  GoRoute(
                    path: 'RemoveBackground',
                    builder: (BuildContext context, GoRouterState state) =>
                        RemoveBackground(),
                  ),
                ],
              ),
            ],
          ),

          // The route branch for the second tab of the bottom navigation bar.
          StatefulShellBranch(
            // It's not necessary to provide a navigatorKey if it isn't also
            // needed elsewhere. If not provided, a default key will be used.
            routes: <RouteBase>[
              GoRoute(
                // The screen to display as the root in the second tab of the
                // bottom navigation bar.
                path: '/Image_Generator',
                builder: (BuildContext context, GoRouterState state) =>
                    //     const RootScreen(
                    //   label: 'Image Generator',
                    //   detailsPath: '/b/details/1',
                    //   secondDetailsPath: '/b/details/2',
                    // ),
                    ImageGenerator(),
                routes: <RouteBase>[
                  GoRoute(
                    path: 'details/:param',
                    builder: (BuildContext context, GoRouterState state) =>
                        //     DetailsScreen(
                        //   label: 'B',
                        //   param: state.pathParameters['param'],
                        // ),
                        RemoveBackground(),
                  ),
                ],
              ),
            ],
          ),

          // The route branch for the third tab of the bottom navigation bar.
          StatefulShellBranch(
            routes: <RouteBase>[
              GoRoute(
                // The screen to display as the root in the third tab of the
                // bottom navigation bar.
                path: '/Profile',
                builder: (BuildContext context, GoRouterState state) =>
                    //     const RootScreen(
                    //   label: 'Profile',
                    //   detailsPath: '/c/details',
                    // ),
                    Profile(),
                routes: <RouteBase>[
                  GoRoute(
                    path: 'details',
                    builder: (BuildContext context, GoRouterState state) =>
                        //     DetailsScreen(
                        //   label: 'C',
                        //   extra: state.extra,
                        // ),
                        RemoveBackground(),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    ],
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routerConfig: _router,
    );
  }
}

/// Builds the "shell" for the app by building a Scaffold with a
/// BottomNavigationBar, where [child] is placed in the body of the Scaffold.
