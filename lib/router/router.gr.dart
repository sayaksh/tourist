// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i3;
import 'package:flutter/material.dart' as _i4;

import '../pages/all_district.page.dart' as _i1;
import '../pages/districts_detail.page.dart' as _i2;

class AppRouter extends _i3.RootStackRouter {
  AppRouter([_i4.GlobalKey<_i4.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i3.PageFactory> pagesMap = {
    MainDistrictRoute.name: (routeData) {
      return _i3.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.MainDistrictPage());
    },
    DistrictDetailRoute.name: (routeData) {
      final args = routeData.argsAs<DistrictDetailRouteArgs>();
      return _i3.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i2.DistrictDetailPage(
              key: args.key, districName: args.districName));
    }
  };

  @override
  List<_i3.RouteConfig> get routes => [
        _i3.RouteConfig(MainDistrictRoute.name, path: '/'),
        _i3.RouteConfig(DistrictDetailRoute.name, path: '/district-detail-page')
      ];
}

/// generated route for
/// [_i1.MainDistrictPage]
class MainDistrictRoute extends _i3.PageRouteInfo<void> {
  const MainDistrictRoute() : super(MainDistrictRoute.name, path: '/');

  static const String name = 'MainDistrictRoute';
}

/// generated route for
/// [_i2.DistrictDetailPage]
class DistrictDetailRoute extends _i3.PageRouteInfo<DistrictDetailRouteArgs> {
  DistrictDetailRoute({_i4.Key? key, required String districName})
      : super(DistrictDetailRoute.name,
            path: '/district-detail-page',
            args: DistrictDetailRouteArgs(key: key, districName: districName));

  static const String name = 'DistrictDetailRoute';
}

class DistrictDetailRouteArgs {
  const DistrictDetailRouteArgs({this.key, required this.districName});

  final _i4.Key? key;

  final String districName;

  @override
  String toString() {
    return 'DistrictDetailRouteArgs{key: $key, districName: $districName}';
  }
}
