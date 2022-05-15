import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:http/http.dart' as http;
import 'package:shop_1_new/model/categoryModel.dart';


class APIClass {

  static fetchNews() async {
    List<Category> listarticles = [];
    var url = Uri.parse(
        'https://retail.amit-learning.com/api/categories');
    print('url$url');
    var response = await http.get(url);
    print('response$response');
    var responsebody = jsonDecode(response.body)['categories'];
    print('responsebody$responsebody');
    for (var i in responsebody) {
      Category x = Category(
          name: i['name'],
          id: i['id'],

          avatar: i['avatar']);
      listarticles.add(x);
      print('listarticles$listarticles');
    }
    print('listarticles$listarticles');
    return listarticles;
  }}