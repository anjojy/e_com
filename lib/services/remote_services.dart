import 'package:e_com/models/HomeBanner.dart';
import 'package:e_com/models/HomePageModel.dart';
import 'package:http/http.dart' as http;

class RemoteServices {
  static var client = http.Client();

  static Future<List<HomePageModel>> fetchProducts() async {
    var response = await client
        .get(Uri.parse('http://omanphone.smsoman.com/api/homepage'));
    if (response.statusCode == 200) {
      var jsonString = response.body;
      return productsFromJson(jsonString);
    } else {
      //show error message
      return null;
    }
  }

  static Future<HomeBanner> fetchBanners() async {
    var response = await client
        .get(Uri.parse('http://omanphone.smsoman.com/api/configuration'));
    if (response.statusCode == 200) {
      var jsonString = response.body;
      return homeBannerFromJson(jsonString);
    } else {
      //show error message
      return null;
    }
  }
}
