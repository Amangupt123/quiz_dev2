import 'dart:convert';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:quiz_dev2/cat_fact_response.dart';
import 'package:quiz_dev2/token.dart';
 import 'package:dio/dio.dart';

class Api extends StatefulWidget {
  const Api({Key? key}) : super(key: key);

  @override
  State<Api> createState() => _ApiState();
}

class _ApiState extends State<Api> {
  CatFactResponse? x;
  Future<void> getdata() async {
   

class DioClient {
  final Dio _dio = Dio();

  final _baseUrl = 'https://reqres.in/api';

  // TODO: Add methods
}
    var res = await http.get(
      Uri.parse(
        "http://23.23.68.11/quiz_app/admin/public/api/refferal-code",
      ),
      headers: {
        'Authorization': 'Bearer $token',
      },
    );
    x = CatFactResponse.fromJson(jsonDecode(res.body));
    setState(() {});
    print(x!.data);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("api")),
      body: Container(
        alignment: Alignment.center,
        child: ElevatedButton(
          onPressed: getdata,
          child: Text(
            x == null ? "Aman" : x!.data,
          ),
        ),
      ),
    );
  }
}
