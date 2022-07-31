import 'package:flutter/material.dart';
import '../main_page.dart';

Map<String, Widget Function(BuildContext)> getRoutes(BuildContext context) {
  return {
    "/" : (context) => const MainPage(),
    "/callback": (context) => const MainPage()
  };
}
