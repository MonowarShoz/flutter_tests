import 'package:flutter/material.dart';
import 'package:flutterapihttp/api.dart';
import 'package:flutterapihttp/list_widget.dart';
import 'package:flutterapihttp/model/userdata.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
 
  late Future<List<UserData>> userData;
  ApiData apiData = ApiData();

  @override
  void initState() {
    userData = apiData.fetchData();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: FutureBuilder<List<UserData>>(
          future: userData,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              List<UserData>? nuserData = snapshot.data;
              return ListViewWidget(userDatas: nuserData!);
            } else if (snapshot.hasError) {
              return Text("${snapshot.error}");
            }
            return CircularProgressIndicator();
          },
        ),
      ),
    );
  }
}
