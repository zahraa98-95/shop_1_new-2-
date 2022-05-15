import 'dart:convert';
import 'package:http/http.dart' as http;

class LoginClass {
  static login(String email, String password) async {
    var url = Uri.parse('https://retail.amit-learning.com/api/login');
    print('url$url');
    var response =
        await http.post(url, body: {"email": email, "password": password});
    print('response$response');
    var responsebody = jsonDecode(response.body);
    print('responsebody$responsebody');
  }
}
