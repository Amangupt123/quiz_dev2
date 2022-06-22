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

  // final _baseUrl = 'http://23.23.68.11/quiz_app/admin/public/api/refferal-code';

  // TODO: Add methods

  //
  Future<CatFactResponse> getUser() async {
    final Dio _dio = Dio();
    // Perform GET request to the endpoint "/users/<id>"
    Response response = await _dio
        .get("http://23.23.68.11/quiz_app/admin/public/api/refferal-code");

    // Prints the raw data returned by the server
    print('User Info: ${response.data}');

    // Parsing the raw JSON data to the User class
    CatFactResponse referralCodeData = CatFactResponse.fromJson(response.data);

    return referralCodeData;

    x = CatFactResponse.fromJson(jsonDecode(response.data));
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
          onPressed: getUser,
          child: Text(
            x == null ? "Aman" : x!.data,
          ),
        ),
      ),
    );
  }
}
