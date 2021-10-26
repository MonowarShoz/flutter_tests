import 'package:flutter/material.dart';

class DrawerItem {
  final String title;
  final IconData iconData;

  const DrawerItem({
    required this.title,
    required this.iconData,
  });
}

class DrawerItems {
  static const home = DrawerItem(
    title: 'home',
    iconData: Icons.home,
  );
  static const favorites = DrawerItem(
    title: 'favorite',
    iconData: Icons.favorite,
  );
  static const settings = DrawerItem(
    title: 'settings',
    iconData: Icons.settings,
  );
  static const logout = DrawerItem(
    title: 'Log Out',
    iconData: Icons.logout,
  );

  static final List<DrawerItem> allItems = [
    home,
    favorites,
    settings,
    logout,
  ];
}
