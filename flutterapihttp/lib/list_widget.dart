import 'package:flutter/material.dart';
import 'package:flutterapihttp/model/userdata.dart';

class ListViewWidget extends StatelessWidget {
  final List<UserData> userDatas;
  const ListViewWidget({ Key? key, required this.userDatas }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: userDatas.length,
      itemBuilder: (ctx, int index){
        return createListTile(userDatas[index],ctx);
      },
      
    );
  }
  Widget createListTile(UserData userData, BuildContext context){
    return ListTile(
      title: Card(
        child: Container(
            decoration: BoxDecoration(border: Border.all(color: Colors.black)),
            padding: EdgeInsets.all(20.0),
            margin: EdgeInsets.all(20.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  '${userData.userinfo!.rmrks}, ${userData.userinfo!.loginid}, ${userData.userinfo!.rescode}, ${userData.userinfo!.paword} ',
                  
                  style:  TextStyle(fontWeight: FontWeight.bold),
                  
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                 '${userData.page}, ${userData.ticketid}, ${userData.module}',
                  style:  TextStyle(fontWeight: FontWeight.bold),
                  
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}