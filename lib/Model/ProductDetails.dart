import 'dart:convert';

ProductDetailModel advertisementFromJson(String str) =>
    ProductDetailModel.fromJson(json.decode(str));

class ProductDetailModel {
  String name, price, colorimg;
  int id, ram, storage, battery, camera, display;
  List<String> images;
  ProductDetailModel({
    required this.name,
    required this.price,
    required this.id,
    required this.ram,
    required this.images,
    required this.colorimg,
    required this.storage,
    required this.battery,
    required this.camera,
    required this.display,
  });

  factory ProductDetailModel.fromJson(Map<String, dynamic> json) =>
      ProductDetailModel(
        name: json["name"] == null ? null : json["name"],
        price: json["price"] == null ? null : json["price"],
        id: json["id"] == null ? null : json["id"],
        ram: json["ram"] == null ? null : json["ram"],
        images: List<String>.from(json["images"].map((x) => x)),
        //images: json["image"] == null ? null : json["productimg"],
        colorimg: json["color"] == null ? null : json["colorimg"],
        storage: json["storage"] == null ? null : json["storage"],
        battery: json["battery"] == null ? null : json["battery"],
        camera: json["camera"] == null ? null : json["camera"],
        display: json["display"] == null ? null : json["display"],
      );
}
