
import 'dart:async';
import 'dart:io';

import 'package:spotify_test/bloc/bloc.dart';
import 'package:http/http.dart' as http;

class SongListBloc implements Bloc{
    late final _client;

    final _searchQuerySongController = StreamController<String?>();

    Sink<String?> get searchQuery => _searchQuerySongController.sink;

    late Stream<List<Object?>> songsStream;

    SongListBloc() {
        /*
        songsStream = _searchQuerySongController.stream.asyncMap((query) => {
            http.get(Uri.parse("https://api.spotify.com/v1/search?type=track&include_external=audio&q=Rexha"), header: {
                HttpHeaders.authorizationHeader: "Bearer BQBz7Ic-xGRdMvvead8okjVJFG70PYTYvpPMzvo5-9-4Mn71GTameCnGNxcbk4uwt3GFqBHG5CSWNxqfK4xLYubu5yrq1CBn7uRPs_b8N-gurlhmjwy2Oc5EtEogVW4Rz0PSfqUNxhp2g7yz2hJv97R9gu8mFduysY4Wic5SNd45guZ49XU2G0CmFrvvi1RSXNBn9rwOpn3nHoCffITAtdyF"
            });
        });
        */

    }

    @override
    void dispose() {

    }
}