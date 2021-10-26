import 'package:flutter/material.dart';

class DrawerMenu extends StatelessWidget {
  final VoidCallback onClick;
  const DrawerMenu({Key? key, required this.onClick}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  IconButton(
      onPressed: onClick,
      color: Colors.white,
      icon:const  Icon(Icons.menu),
    );
  }
}
