import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class JuliaServerRepository {
  Future<void> getData() async {

    final response = await Dio().get("http://127.0.0.1:8080/data");

    if (response.statusCode == 200) {
      Map<String, dynamic> data = jsonDecode(response.data) as Map<String, dynamic>;
      debugPrint(data["message"]);
    }else {
      debugPrint(response.statusCode.toString());
    }
  }

  Future<Map<String,dynamic>> getEcgData(String path, int startPoint, int endPoint) async {
    Map<String,dynamic> dataToSend = {"path": path, "startPoint": startPoint, "endPoint": endPoint};
    // var jsonDataToSend = jsonEncode(dataToSend);

    final response = await Dio().post("http://127.0.0.1:8080/getECG", data: dataToSend, options: Options(headers: {'Content-Type': 'application/json'}),);

    if (response.statusCode == 200) {
      Map<String, dynamic> data = jsonDecode(response.data) as Map<String, dynamic>;
      debugPrint(data["outputR_y"].toString());
      return data;
    }else {
      debugPrint(response.statusCode.toString());
      return {};}
  }
}