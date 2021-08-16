import 'dart:convert';

import 'package:http/http.dart' as http;

class APIServices {
  static getProductDetails() async {
    var response = await http
        .get(Uri.https('omanphone.smsoman.com', '/api/productdetails?id=5'));
    if (response.statusCode == 200) {
      var productData = jsonDecode(response.body);
      print(productData);
    } else {
      print(response.statusCode);
    }
  }
}
