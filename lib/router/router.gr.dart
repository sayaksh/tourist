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

import '../districts/kakching.thoubal.dart' as _i2;
import '../mainpage.dart' as _i1;

class AppRouter extends _i3.RootStackRouter {
  AppRouter([_i4.GlobalKey<_i4.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i3.PageFactory> pagesMap = {
    DistrictsRoute.name: (routeData) {
      return _i3.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.DistrictsPage());
    },
    KakchingRoute.name: (routeData) {
      return _i3.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.KakchingPage());
    }
  };

  @override
  List<_i3.RouteConfig> get routes => [
        _i3.RouteConfig(DistrictsRoute.name, path: '/'),
        _i3.RouteConfig(KakchingRoute.name, path: '/kakching-page')
      ];
}

/// generated route for
/// [_i1.DistrictsPage]
class DistrictsRoute extends _i3.PageRouteInfo<void> {
  const DistrictsRoute() : super(DistrictsRoute.name, path: '/');

  static const String name = 'DistrictsRoute';
}

/// generated route for
/// [_i2.KakchingPage]
class KakchingRoute extends _i3.PageRouteInfo<void> {
  const KakchingRoute() : super(KakchingRoute.name, path: '/kakching-page');

  static const String name = 'KakchingRoute';
}