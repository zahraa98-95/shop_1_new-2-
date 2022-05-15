import 'dart:convert';

import 'package:shop_1_new/model/categoryModel.dart';
import 'package:shop_1_new/model/productModel.dart';
import 'package:http/http.dart' as http;

class Aproduct {

  static ApiProduct() async {
    List<Product> listarticles = [];
    var url = Uri.parse(
        'https://retail.amit-learning.com/api/products');
    print('url$url');
    var response = await http.get(url);
    print('response$response');
    var responsebody = jsonDecode(response.body)['products'];
    print('responsebody$responsebody');
    for (var i in responsebody) {
      Product x = Product(
       price_final_text :i['price_final_text'],
       price_final:i['price_final'],
       avatar:i['avatar'],
       in_stock:i['in_stock'],
       currency:i['currency'],
       discount_type:i['discount_type'],

      discount:i['discount'],
       price:i['price'],
       description:i['description'],

     category_id:i['category_id'],
       title:i['title'],
       name:i['name'],
       id:i['id']
       );
      listarticles.add(x);
      print('listarticles$listarticles');
    }
    print('listarticles$listarticles');
    return listarticles;
  }}