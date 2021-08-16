class ProductDetailModel {
  final String productimg, name, price, colorimg;
  final int id, ram, storage, battery, camera, display;
  ProductDetailModel({
    required this.name,
    required this.price,
    required this.id,
    required this.ram,
    required this.productimg,
    required this.colorimg,
    required this.storage,
    required this.battery,
    required this.camera,
    required this.display,
  });
}
