import 'dart:convert';
import 'package:http/http.dart' as http;

class RegisterClass {
  static register(String email, String password,String name) async {
    var url = Uri.parse('https://retail.amit-learning.com/api/register');
    print('url$url');
    var response =
    await http.post(url, body: {'name':name,"email": email, "password": password});
    print('response$response');
    var responsebody = jsonDecode(response.body);
    print('responsebody$responsebody');
  }
}
