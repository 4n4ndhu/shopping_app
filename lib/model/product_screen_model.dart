// To parse this JSON data, do
//
//     final productScreenModel = productScreenModelFromJson(jsonString);

import 'dart:convert';

List<ProductScreenModel> productScreenModelFromJson(String str) =>
    List<ProductScreenModel>.from(
        json.decode(str).map((x) => ProductScreenModel.fromJson(x)));

class ProductScreenModel {
  num? id;
  String? title;
  double? price;
  String? description;
  String? category;
  String? image;
  Rating? rating;

  ProductScreenModel({
    this.id,
    this.title,
    this.price,
    this.description,
    this.category,
    this.image,
    this.rating,
  });

  factory ProductScreenModel.fromJson(Map<String, dynamic> json) =>
      ProductScreenModel(
        id: json["id"],
        title: json["title"],
        price: json["price"]?.toDouble(),
        description: json["description"],
        category: json["category"],
        image: json["image"],
        rating: json["rating"] == null ? null : Rating.fromJson(json["rating"]),
      );
}

class Rating {
  double? rate;
  num? count;

  Rating({
    this.rate,
    this.count,
  });

  factory Rating.fromJson(Map<String, dynamic> json) => Rating(
        rate: json["rate"]?.toDouble(),
        count: json["count"],
      );
}
