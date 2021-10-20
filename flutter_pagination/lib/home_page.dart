import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:pull_to_refresh/pull_to_refresh.dart';

import 'model/userdata.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentPage = 1;
  late int totalPages;
  List<UserData> posts = [];
  final RefreshController refreshController =
      RefreshController(initialRefresh: true);

  Future<bool> getUserData({bool isRefresh = false}) async {
    if (isRefresh) {
      currentPage = 1;
    } else {
      if (currentPage >= totalPages) {
        refreshController.loadNoData();
        return false;
      }
    }
    final Uri uri = Uri.parse(
        "http://erp1.bepza.gov.bd:82/api/ticketes?page=$currentPage&size=10");
    final response = await http.get(uri);
    if (response.statusCode == 200) {
      List<UserData> result = userDataFromJson(response.body);
      if (isRefresh) {
        posts = result.toList();
      } else {}

      currentPage++;
      totalPages = 30;

      setState(() {});
      return true;
    } else {
      return false;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Pagination'),
      ),
      body: SmartRefresher(
        controller: refreshController,
        enablePullUp: true,
        onRefresh: () async {
          final result = await getUserData(isRefresh: true);
          if (result) {
            refreshController.refreshCompleted();
          } else {
            refreshController.refreshFailed();
          }
        },
        onLoading: () async {
          final result = await getUserData();
          if (result) {
            refreshController.loadComplete();
          } else {
            refreshController.loadFailed();
          }
        },
        child: ListView.separated(
          itemBuilder: (context, index) {
            final userDatas = posts[index];
            return ListTile(
              title: Text(
                  '${userDatas.ticketid} ${userDatas.begintime} ${userDatas.module}'),
              subtitle: Text(
                  '${userDatas.userinfo.loginid} ${userDatas.userinfo.initJinfo}'),
            );
          },
          separatorBuilder: (context, index) => Divider(),
          itemCount: posts.length,
        ),
      ),
    );
  }
}
