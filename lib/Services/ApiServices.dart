import 'package:e_com/Model/HomePageModel.dart';
import 'package:http/http.dart' as http;

class RemoteServices {
  static var client = http.Client();

  static Future<List<HomeProductModel>?> fetchProducts() async {
    var response = await client
        .get(Uri.parse('http://omanphone.smsoman.com/api/homepage'));
    if (response.statusCode == 200) {
      var jsonString = response.body;
      print(jsonString);
      return HomeProductsFromJson(jsonString);
    } else {
      //show error message
      return null;
    }
  }
}
