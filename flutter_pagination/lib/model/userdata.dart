// To parse this JSON data, do
//
//     final userData = userDataFromJson(jsonString);


import 'dart:convert';

List<UserData> userDataFromJson(String str) => List<UserData>.from(json.decode(str).map((x) => UserData.fromJson(x)));

String userDataToJson(List<UserData> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class UserData {
    UserData({
      required this.ticketid,
        required this.begintime,
        required this.prjitmcode,
        required this.module,
        required this.page,
        required this.ticketdes,
        required this.tickettype,
        required this.tickettypeD,
        required this.tcatagory,
        required this.tcatagoryD,
        required this.fileurl,
        required this.fileurlD,
        required this.expecttime,
        required this.statuscode,
        required this.statuscodeD,
        required this.statustime,
        required this.priority,
        required this.priorityD,
        required this.statusdesc,
        required this.usercode,
        required this.userinfo,
        required this.statusbkp,
    });

    String ticketid;
    DateTime begintime;
    String prjitmcode;
    String module;
    String page;
    String ticketdes;
    String tickettype;
    String tickettypeD;
    String tcatagory;
    String tcatagoryD;
    String fileurl;
    String fileurlD;
    DateTime expecttime;
    String statuscode;
    String statuscodeD;
    DateTime statustime;
    String priority;
    String priorityD;
    String statusdesc;
    String usercode;
    Userinfo userinfo;
    dynamic statusbkp;

    factory UserData.fromJson(Map<String, dynamic> json) => UserData(
        ticketid: json["ticketid"],
        begintime: DateTime.parse(json["begintime"]),
        prjitmcode: json["prjitmcode"],
        module: json["module"],
        page: json["page"],
        ticketdes: json["ticketdes"],
        tickettype: json["tickettype"],
        tickettypeD: json["tickettypeD"],
        tcatagory: json["tcatagory"],
        tcatagoryD: json["tcatagoryD"],
        fileurl: json["fileurl"],
        fileurlD: json["fileurlD"],
        expecttime: DateTime.parse(json["expecttime"]),
        statuscode: json["statuscode"],
        statuscodeD: json["statuscodeD"],
        statustime: DateTime.parse(json["statustime"]),
        priority: json["priority"],
        priorityD: json["priorityD"],
        statusdesc: json["statusdesc"],
        usercode: json["usercode"],
        userinfo: Userinfo.fromJson(json["userinfo"]),
        statusbkp: json["statusbkp"],
    );

    Map<String, dynamic> toJson() => {
        "ticketid": ticketid,
        "begintime": begintime.toIso8601String(),
        "prjitmcode": prjitmcode,
        "module": module,
        "page": page,
        "ticketdes": ticketdes,
        "tickettype": tickettype,
        "tickettypeD": tickettypeD,
        "tcatagory": tcatagory,
        "tcatagoryD": tcatagoryD,
        "fileurl": fileurl,
        "fileurlD": fileurlD,
        "expecttime": expecttime.toIso8601String(),
        "statuscode": statuscode,
        "statuscodeD": statuscodeD,
        "statustime": statustime.toIso8601String(),
        "priority": priority,
        "priorityD": priorityD,
        "statusdesc": statusdesc,
        "usercode": usercode,
        "userinfo": userinfo.toJson(),
        "statusbkp": statusbkp,
    };
}

class Userinfo {
    Userinfo({
        required this.rescode,
        required this.loginid,
        required this.paword,
        required this.rmrks,
        required this.imageurl,
        required this.isactive,
        required this.initJinfo,
    });

    String rescode;
    String loginid;
    String paword;
    String rmrks;
    String imageurl;
    bool isactive;
    String initJinfo;

    factory Userinfo.fromJson(Map<String, dynamic> json) => Userinfo(
        rescode: json["rescode"],
        loginid: json["loginid"],
        paword: json["paword"],
        rmrks: json["rmrks"],
        imageurl: json["imageurl"],
        isactive: json["isactive"],
        initJinfo: json["initJinfo"],
    );

    Map<String, dynamic> toJson() => {
        "rescode": rescode,
        "loginid": loginid,
        "paword": paword,
        "rmrks": rmrks,
        "imageurl": imageurl,
        "isactive": isactive,
        "initJinfo": initJinfo,
    };
}

