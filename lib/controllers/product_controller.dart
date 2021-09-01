import 'package:e_com/models/HomeBanner.dart';
import 'package:e_com/models/HomePageModel.dart';
import 'package:e_com/services/remote_services.dart';
import 'package:get/state_manager.dart';

class ProductController extends GetxController {
  var isLoading = true.obs;
  var productList = <HomePageModel>[].obs;
  HomeBanner homeBanner;
  HomePageModel homePageModel;

  @override
  void onInit() {
    fetchProducts();
    fectchBanners();
    super.onInit();
  }

  void fetchProducts() async {
    try {
      isLoading(true);
      var products = await RemoteServices.fetchProducts();
      if (products != null) {
        productList.value = products;
      }
    } finally {
      isLoading(false);
    }
  }

  void fectchBanners() async {
    try {
      var banners = await RemoteServices.fetchBanners();
      if (banners != null) {
        homeBanner = banners;
      }
    } finally {}
  }
}
