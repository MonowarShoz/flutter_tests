import 'package:flutter/material.dart';
import 'package:material_design_fl/drawer/drawer_item.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      body: SingleChildScrollView(
        
        child: Column(
          children: [
            buildDrawerItems(context),
          ],
        ),
      ),
    );
  }

  Widget buildDrawerItems(BuildContext context) {
    
    return Column(
      
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: MediaQuery.of(context).size.height / 20,),
       Row(
         mainAxisAlignment: MainAxisAlignment.spaceAround,
         children: const [

            Padding(
              padding:  EdgeInsets.all(28.0),
              child:  CircleAvatar(
                radius: 30,
                backgroundImage: NetworkImage('https://picsum.photos/200/300'),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(right: 10),
              child: Text('Welcome Back!', style: TextStyle(fontSize: 30,color: Colors.white),),
            )
         ],
       ),
        Column(
          children: DrawerItems.allItems
              .map(
                (item) => ListTile(
              
                  contentPadding:const EdgeInsets.symmetric(horizontal: 20,vertical: 8),
                  title: Text(
                    item.title,
                    style: const TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  leading: Icon(item.iconData,color: Colors.white,),
                  onTap: () {},
                ),
              )
              .toList(),
        ),
       const Divider(),
      ],
    );
  }
}
