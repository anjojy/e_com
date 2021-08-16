import 'dart:convert';

List<HomeProductModel> productFromJson(String str) =>
    List<HomeProductModel>.from(
        json.decode(str).map((x) => HomeProductModel.fromJson(x)));

String welcomeToJson(List<HomeProductModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class HomeProductModel {
  HomeProductModel({
    required this.type,
    required this.data,
  });

  String type;
  Data data;

  factory HomeProductModel.fromJson(Map<String, dynamic> json) =>
      HomeProductModel(
        type: json["type"],
        data: Data.fromJson(json["data"]),
      );

  Map<String, dynamic> toJson() => {
        "type": type,
        "data": data.toJson(),
      };
}

class Data {
  Data({
    required this.id,
    required this.title,
    required this.items,
  });

  String id;
  String title;
  List<Item> items;

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        id: json["id"],
        title: json["title"] == null ? null : json["title"],
        items: List<Item>.from(json["items"].map((x) => Item.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "title": title == null ? null : title,
        "items": items == null
            ? null
            : List<dynamic>.from(items.map((x) => x.toJson())),
      };
}

class Item {
  Item({
    required this.name,
    required this.id,
    required this.sku,
    required this.image,
    required this.price,
    required this.specialPrice,
    required this.rating,
    this.storage,
    required this.productTag,
    required this.preorder,
  });

  String name;
  String id;
  String sku;
  String image;
  double price;
  int specialPrice;
  String rating;
  dynamic storage;
  String productTag;
  String preorder;

  factory Item.fromJson(Map<String, dynamic> json) => Item(
        name: json["name"],
        id: json["id"],
        sku: json["sku"],
        image: json["image"] == null ? null : json["image"],
        price: json["price"].toDouble(),
        specialPrice:
            json["special_price"] == null ? null : json["special_price"],
        rating: json["rating"] == null ? null : json["rating"],
        storage: json["storage"],
        productTag: json["product_tag"] == null ? null : json["product_tag"],
        preorder: json["preorder"] == null ? null : json["preorder"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "id": id,
        "sku": sku,
        "image": image == null ? null : image,
        "price": price,
        "special_price": specialPrice == null ? null : specialPrice,
        "rating": rating == null ? null : rating,
        "storage": storage,
        "product_tag": productTag == null ? null : productTag,
        "preorder": preorder == null ? null : preorder,
      };
}
