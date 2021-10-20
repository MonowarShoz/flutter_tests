class UserData {
  final String ticketid;
  final String begintime;
  final String prjitmcode;
  final String module;
  final String page;
  final Userinfo? userinfo;

  UserData({
    required this.ticketid,
    required this.begintime,
    required this.prjitmcode,
    required this.module,
    required this.page,
    required this.userinfo,
  });
  factory UserData.fromJson(Map<String, dynamic> json) {
    return UserData(
      ticketid: json['ticketid'],
      begintime: json['begintime'],
      prjitmcode: json['prjitmcode'],
      module: json['module'],
      page: json['page'],
      userinfo:
          json['userinfo'] != null ? Userinfo.fromJson(json['userinfo']) : null,
    );
  }
}

class Userinfo {
  final String rescode;
  final String loginid;
  final String paword;
  final String rmrks;
  final String imageurl;
  final bool isactive;
  final String initJinfo;

  Userinfo(
      {required this.rescode,
      required this.loginid,
      required this.paword,
      required this.rmrks,
      required this.imageurl,
      required this.isactive,
      required this.initJinfo});

  factory Userinfo.fromJson(Map<String, dynamic> json) {
    return Userinfo(
      rescode: json['rescode'],
      loginid: json['loginid'],
      paword: json['paword'],
      rmrks: json['rmrks'],
      imageurl: json['imageurl'],
      isactive: json['isactive'],
      initJinfo: json['initJinfo'],
    );
  }
}
