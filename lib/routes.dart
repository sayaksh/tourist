import 'package:flutter/material.dart';
import 'package:tourist/districts/bishnupur.dart';

Widget makeRoute(
    {required BuildContext context,
    required String routeName,
    int? districtId}) {
  final Widget child = _buildRoute(
      context: context, routeName: routeName, districtId: districtId);
  return child;
}

Widget _buildRoute({
  required BuildContext context,
  required String routeName,
  int? districtId,
}) {
  switch (routeName) {
    case '/':
      return const BishnupurPage();
    case '/Bishnupur':
      return BishnupurPage(districtId: districtId);
    default:
      throw 'Route $routeName is not defined';
  }
}

class DistrictAgr {
  late int districtId;
}
