import 'package:auto_route/annotations.dart';
import 'package:tourist/districts/kakching.thoubal.dart';

import 'package:tourist/mainpage.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: DistrictsPage, initial: true),
    AutoRoute(page: KakchingPage),
  ],
)
class $AppRouter {}
