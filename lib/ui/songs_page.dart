import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:spotify_test/ui/search_page.dart';

class SongsPage extends StatefulWidget {
  const SongsPage({Key? key}) : super(key: key);

  @override
  State<SongsPage> createState() => SongsPageState();
}

class SongsPageState extends State<SongsPage> with TickerProviderStateMixin{
  static const List<Widget> _widgetOptions = <Widget>[
    Icon(Icons.directions_bike),
    SearchPage(),
    Icon(Icons.directions_bus)
  ];

  int _selectedIndex = 1;

  late TabController _tabController;

  @override
  void initState() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: [SystemUiOverlay.bottom]);
    super.initState();
    _tabController = TabController(length: 3, vsync: this, initialIndex: 1,animationDuration: const Duration(milliseconds: 100));
    _tabController.addListener(() {
      setState(() {
        _selectedIndex = _tabController.index;
      });
    });
  }

  @override
  void dispose() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: SystemUiOverlay.values);
    super.dispose();
  }

  void _onItemTapped(int index) {
    setState(() {
      _tabController.animateTo(index);
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
            body: TabBarView(
                controller: _tabController,
                children: _widgetOptions,
            ),
            bottomNavigationBar: BottomNavigationBar(
              items: const <BottomNavigationBarItem>[
                BottomNavigationBarItem(icon: Icon(Icons.music_note), label: 'Home'),
                BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
                BottomNavigationBarItem(icon: Icon(Icons.favorite), label: 'Favorites'),
              ],
              currentIndex: _selectedIndex,
              onTap: _onItemTapped,
            ),
          )
    );
  }
}
