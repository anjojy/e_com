import 'dart:convert';

HomeBanner homeBannerFromJson(String str) =>
    HomeBanner.fromJson(json.decode(str));

String homeBannerToJson(HomeBanner data) => json.encode(data.toJson());

class HomeBanner {
  HomeBanner({
    this.status,
    this.data,
  });

  String status;
  Data data;

  factory HomeBanner.fromJson(Map<String, dynamic> json) => HomeBanner(
        status: json["status"],
        data: Data.fromJson(json["data"]),
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "data": data.toJson(),
      };
}

class Data {
  Data({
    this.slider,
  });

  List<Slider> slider;

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        slider:
            List<Slider>.from(json["slider"].map((x) => Slider.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "slider": List<dynamic>.from(slider.map((x) => x.toJson())),
      };
}

class Slider {
  Slider({
    this.image,
    this.type,
    this.id,
    this.sortOrder,
  });

  String image;
  String type;
  String id;
  String sortOrder;

  factory Slider.fromJson(Map<String, dynamic> json) => Slider(
        image: json["image"],
        type: json["type"],
        id: json["id"],
        sortOrder: json["sort_order"],
      );

  Map<String, dynamic> toJson() => {
        "image": image,
        "type": type,
        "id": id,
        "sort_order": sortOrder,
      };
}
