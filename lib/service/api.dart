import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Api {
  static const baseUrl = 'https://node-mongodb-api-tedz.onrender.com/api/';
  //static const baseUrl = 'http://192.168.1.109:3000/api/';

  static addproduct(Map udata) async {
    var url = Uri.parse("${baseUrl}register");
    try {
      final res = await http.post(url, body: udata);

      if (res.statusCode == 200) {
        var data = jsonDecode(res.body.toString());
         print(data);
      } else {
        print("failed to get response");
      }
    } catch (e) {
      debugPrint(e.toString());
    }
  }
}
