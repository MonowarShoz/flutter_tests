import 'package:flutter/material.dart';
import 'package:material_design_fl/drawer/drawer_widget.dart';
import 'package:material_design_fl/home_screen.dart';
import 'package:material_design_fl/login_screen.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({
    Key? key,
  }) : super(key: key);

  @override
  _FirstScreenState createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  bool isDragging = false;
  late double xOffset;
  late double yOffset;
  late double scaleFactor;
  late bool isDrawerOpen;

  @override
  void initState() {
    super.initState();
    
    closeDrawer();
  }

  void openDrawer() {
    setState(() {
      xOffset = 240;
      yOffset = 150;
      scaleFactor = 0.7;
      isDrawerOpen = true;
    });
  }

  void closeDrawer() {
    setState(() {
      xOffset = 0;
      yOffset = 0;
      scaleFactor = 1;
      isDrawerOpen = false;

    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Stack(
        children: [
          const DrawerWidget(),
          buildPage(),
        ],
      ),
    );
  }

  Widget buildPage() {
    return GestureDetector(
      
      onTap: closeDrawer,
      onHorizontalDragStart: (details) => isDragging = true,
      onHorizontalDragUpdate: (details){
        if(!isDragging) return;
        const delta = 1;
        if (details.delta.dx > delta) {
          openDrawer();
          
        } else if(details.delta.dy < -delta){
          closeDrawer();

        }
        isDragging = false;

      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 250),
        transform: Matrix4.translationValues(xOffset, yOffset, 0)
          ..scale(scaleFactor),
        child: Container(
          color: isDrawerOpen ? Colors.white12 : Colors.white,
          child: HomeScreen(
            openDrawer: openDrawer,
          ),
        ),
      ),
    );
  }
}
