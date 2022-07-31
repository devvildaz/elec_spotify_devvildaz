import 'package:flutter/material.dart';
import 'package:spotify_test/ui/main_page.dart';
import "package:spotify_sdk/spotify_sdk.dart";
import 'package:spotify_test/utils/routes.dart';

const CLIENT_ID = "7bdefa7f0bc8466da6ebaaa98ad484f6";

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  var accessToken = await SpotifySdk.getAccessToken(
      clientId: CLIENT_ID, redirectUrl: "http://org.devvildaz.spotify_test/callback",
      scope: "app-remote-control,user-modify-playback-state,playlist-read-private"
  );

  var isConnected = await SpotifySdk.connectToSpotifyRemote(
      clientId: CLIENT_ID, redirectUrl: 'http://org.devvildaz.spotify_test/callback'
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SpotifySDKApp',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: getRoutes(context),
    );
  }
}