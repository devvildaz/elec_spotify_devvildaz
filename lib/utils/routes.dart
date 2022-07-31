import 'package:flutter/material.dart';
import 'package:spotify_test/ui/songs_page.dart';
import 'package:spotify_test/ui/main_page.dart';

Map<String, Widget Function(BuildContext)> getRoutes(BuildContext context) {
  return {
    "/" : (context) => const SongsPage(),
    "/callback": (context) => const MainPage()
  };
}
