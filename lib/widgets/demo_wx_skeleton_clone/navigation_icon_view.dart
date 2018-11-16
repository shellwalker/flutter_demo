import 'package:flutter/material.dart';

class NavigationIconView {
  NavigationIconView({Widget icon, Widget activeIcon, String title})
      : _icon = icon,
        _title = title,
        item = BottomNavigationBarItem(
            icon: icon, activeIcon: activeIcon, title: Text(title));

  final Widget _icon;
  final String _title;
  final BottomNavigationBarItem item;

  static List<NavigationIconView> buildNavigationViews() {
    return <NavigationIconView>[
      NavigationIconView(
        icon: const Icon(Icons.access_alarm),
        title: 'Alarm',
      ),
      NavigationIconView(
        activeIcon: const Icon(Icons.cloud),
        icon: const Icon(Icons.cloud_queue),
        title: 'Cloud',
      ),
      NavigationIconView(
        activeIcon: const Icon(Icons.favorite),
        icon: const Icon(Icons.favorite_border),
        title: 'Favorites',
      ),
      NavigationIconView(
        icon: const Icon(Icons.event_available),
        title: 'Event',
      )
    ];
  }
}
