import 'dart:convert';

import 'package:flutterapihttp/model/userdata.dart';
import 'package:http/http.dart' as http;
class ApiData{
  Future<List<UserData>> fetchData() async{
  
      var url = Uri.parse('http://erp1.bepza.gov.bd:82/api/ticketes');
      final response = await http.get(url);
      List jsonResponse = json.decode(response.body);
      if (response.statusCode == 200) {
        return jsonResponse.map((value) => UserData.fromJson(value)).toList();
        
      } else {
         throw Exception('Failed to load');
      }

      
    

  }
}