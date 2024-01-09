import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _selectedIndex = 0;
  static final List<Widget> _widgetOptions = <Widget>[
    const Text("Home"),
    const Text("Search"),
    const Text("Tickets"),
    const Text("Profile")
  ];

  void _onItemTapped(int index){
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("my tickets"),backgroundColor: Colors.blue,),
      body: _widgetOptions[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: _onItemTapped,
        elevation: 10,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: Colors.blueGrey,
        unselectedItemColor: const Color(0xFF526480),
        type: BottomNavigationBarType.fixed,
        items: const [
        BottomNavigationBarItem(icon: Icon(FluentIcons.home_20_regular), activeIcon: Icon(FluentIcons.home_20_filled), label: "Home"),
        BottomNavigationBarItem(icon: Icon(FluentIcons.search_20_regular), activeIcon: Icon(FluentIcons.search_20_filled), label: "Search"),
        BottomNavigationBarItem(icon: Icon(FluentIcons.ticket_horizontal_20_regular), activeIcon: Icon(FluentIcons.ticket_horizontal_20_filled), label: "Ticket"),
        BottomNavigationBarItem(icon: Icon(FluentIcons.person_20_regular), activeIcon: Icon(FluentIcons.person_20_filled), label: "Profile"),
      ],),
    );
  }
}
