import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Padding(
          padding: const EdgeInsets.fromLTRB(10, 10, 20, 0) ,
          child: TextField(
            decoration: const InputDecoration(border: OutlineInputBorder(), hintText: 'Search...'),
            onChanged: (query) {

            },
          )
      )
    ]);
  }
}
