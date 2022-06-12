import 'package:flutter/material.dart';
import 'package:rick_app/presentation/widgets/characters.dart';
import 'package:rick_app/presentation/widgets/episodes.dart';

class NavigationWidget extends StatefulWidget {
  const NavigationWidget({Key? key}) : super(key: key);

  @override
  State<NavigationWidget> createState() => _NavigationWidgetState();
}

class _NavigationWidgetState extends State<NavigationWidget> {
  int _selectedIndex = 0;

  static const List<Widget> _titleOptions = <Widget>[
    Text(
      'Characters',
    ),
    Text(
      'Episodes',
    ),
    Text(
      'Locations',
    ),
  ];

  static const List<Widget> _widgetOptions = <Widget>[
    CharactersWidget(),
    EpisodesWidget(),
    Text(
      'Locations',
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: _titleOptions.elementAt(_selectedIndex),
        centerTitle: true,
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.portrait),
            label: 'Characters',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.theaters),
            label: 'Episodes',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.map),
            label: 'Locations',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.white,
        onTap: _onItemTapped,
      ),
    );
  }
}
