import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class JuliaServerRepository {
  final dio = Dio();
  Future<Map<String,dynamic>> getEcgData(String path, int startPoint, int endPoint) async {
    Map<String,dynamic> dataToSend = {"path": path, "startPoint": startPoint, "endPoint": endPoint};
    // var jsonDataToSend = jsonEncode(dataToSend);

    final response = await dio.post("http://127.0.0.1:8080/getECG", data: dataToSend, options: Options(headers: {'Content-Type': 'application/json'}),);

    if (response.statusCode == 200) {
      Map<String, dynamic> data = jsonDecode(response.data) as Map<String, dynamic>;
      
      return data;
    }else {
      debugPrint(response.statusCode.toString());
      return {};}
  }
  Future<Map<String,dynamic>> getPpgData(String path, int startPoint, int endPoint) async {
    Map<String,dynamic> dataToSend = {"path": path, "startPoint": startPoint, "endPoint": endPoint};
    // var jsonDataToSend = jsonEncode(dataToSend);

    final response = await dio.post("http://127.0.0.1:8080/getPPG", data: dataToSend, options: Options(headers: {'Content-Type': 'application/json'}),);

    if (response.statusCode == 200) {
      Map<String, dynamic> data = jsonDecode(response.data) as Map<String, dynamic>;
      
      return data;
    }else {
      debugPrint(response.statusCode.toString());
      return {};}
  }
  Future<Map<String,dynamic>> getApData(String path, int startPoint, int endPoint) async {
    Map<String,dynamic> dataToSend = {"path": path, "startPoint": startPoint, "endPoint": endPoint};
    // var jsonDataToSend = jsonEncode(dataToSend);

    final response = await dio.post("http://127.0.0.1:8080/getAP", data: dataToSend, options: Options(headers: {'Content-Type': 'application/json'}),);

    if (response.statusCode == 200) {
      Map<String, dynamic> data = jsonDecode(response.data) as Map<String, dynamic>;
      
      return data;
    }else {
      debugPrint(response.statusCode.toString());
      return {};}
  }
  Future<Map<String,dynamic>> getDecimatedEcgData(String path) async {
    Map<String,dynamic> dataToSend = {"path": path};
    // var jsonDataToSend = jsonEncode(dataToSend);

    final response = await dio.post("http://127.0.0.1:8080/getDecimatedECG", data: dataToSend, options: Options(headers: {'Content-Type': 'application/json'}),);

    if (response.statusCode == 200) {
      Map<String, dynamic> data = jsonDecode(response.data) as Map<String, dynamic>;
      
      return data;
    }else {
      debugPrint(response.statusCode.toString());
      return {};}
  }

  Future<Map<String,dynamic>> getRrIntervalsData(String path) async {
    Map<String,dynamic> dataToSend = {"path": path};
     
    final response = await dio.post("http://127.0.0.1:8080/getRrIntervals", data: dataToSend, options: Options(headers: {'Content-Type': 'application/json'}),);

    if (response.statusCode == 200) {
      Map<String, dynamic> data = jsonDecode(response.data) as Map<String, dynamic>;
      
      return data;
    }else {
      debugPrint(response.statusCode.toString());
      return {};}
  }

  Future<Map<String,dynamic>> getPulseWaveIntervalsData(String path) async {
    Map<String,dynamic> dataToSend = {"path": path};
    final response = await dio.post("http://127.0.0.1:8080/getPulseWaveReachTime", data: dataToSend, options: Options(headers: {'Content-Type': 'application/json'}),);

    if (response.statusCode == 200) {
      Map<String, dynamic> data = jsonDecode(response.data) as Map<String, dynamic>;
      
      return data;
    }else {
      debugPrint(response.statusCode.toString());
      return {};}
  }

  

}