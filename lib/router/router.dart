import 'package:auto_route/annotations.dart';

import '../pages/all_district.page.dart';
import '../pages/districts_detail.page.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: [
    AutoRoute(page: MainDistrictPage, initial: true),
    AutoRoute(page: DistrictDetailPage),
  ],
)
class $AppRouter {}
