import 'package:deshi_mart/models/review_model.dart';

class ProductModel {
  String? id;
  String? name;
  String? description;
  double? stock;
  double? sellPrice;
  double? purchasePrice;
  String? unit;
  double? unitPrice;
  List<String>? tags;
  String? category;
  List<String>? images;
  String? createAt;
  String? updatedAt;
  bool? isActive;
  List<ReviewModel>? reviews;
  double? discount;
  String? discountStartDate;
  String? discountEndData;
  String? supplier;
  double? averageRating;

  ProductModel(
      {this.id,
      this.name,
      this.description,
      this.stock,
      this.sellPrice,
      this.purchasePrice,
      this.unit,
      this.unitPrice,
      this.tags,
      this.category,
      this.images,
      this.createAt,
      this.updatedAt,
      this.isActive,
      this.reviews,
      this.discount,
      this.discountStartDate,
      this.discountEndData,
      this.supplier,
      this.averageRating});

  ProductModel.fromJson(Map<String, dynamic> json) {
    if (json["id"] is String) {
      id = json["id"];
    }
    if (json["name"] is String) {
      name = json["name"];
    }
    if (json["description"] is String) {
      description = json["description"];
    }
    if (json["stock"] is double) {
      stock = json["stock"];
    }
    if (json["sellPrice"] is double) {
      sellPrice = json["sellPrice"];
    }
    if (json["purchasePrice"] is double) {
      purchasePrice = json["purchasePrice"];
    }
    if (json["unit"] is String) {
      unit = json["unit"];
    }
    if (json["unitPrice"] is double) {
      unitPrice = json["unitPrice"];
    }
    if (json["tags"] is List) {
      tags = json["tags"] ?? [];
    }
    if (json["category"] is String) {
      category = json["category"];
    }
    if (json["images"] is List) {
      images = json["images"] ?? [];
    }
    if (json["createAt"] is String) {
      createAt = json["createAt"];
    }
    if (json["updatedAt"] is String) {
      updatedAt = json["updatedAt"];
    }
    if (json["isActive"] is bool) {
      isActive = json["isActive"];
    }
    if (json["reviews"] is List) {
      reviews = json["reviews"] ?? [];
    }
    if (json["discount"] is double) {
      discount = json["discount"];
    }
    if (json["discountStartDate"] is String) {
      discountStartDate = json["discountStartDate"];
    }
    if (json["discountEndData"] is String) {
      discountEndData = json["discountEndData"];
    }
    if (json["supplier"] is String) {
      supplier = json["supplier"];
    }
    if (json["averageRating"] is double) {
      averageRating = json["averageRating"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data["id"] = id;
    data["name"] = name;
    data["description"] = description;
    data["stock"] = stock;
    data["sellPrice"] = sellPrice;
    data["purchasePrice"] = purchasePrice;
    data["unit"] = unit;
    data["unitPrice"] = unitPrice;
    if (tags != null) {
      data["tags"] = tags;
    }
    data["category"] = category;
    if (images != null) {
      data["images"] = images;
    }
    data["createAt"] = createAt;
    data["updatedAt"] = updatedAt;
    data["isActive"] = isActive;
    if (reviews != null) {
      data["reviews"] = reviews;
    }
    data["discount"] = discount;
    data["discountStartDate"] = discountStartDate;
    data["discountEndData"] = discountEndData;
    data["supplier"] = supplier;
    data["averageRating"] = averageRating;
    return data;
  }
}




// {
//   "id":"",
//   "name":"",
//   "description":"",
//   "stock":2.3,
//   "sellPrice":2.3,
//   "purchasePrice":2.3,
//   "unit":"",
//   "unitPrice":1.2,
//   "tags":[],
//   "category":"",
//   "images":[],
//   "createAt":"",
//   "updatedAt":"",
//   "isActive":false,
//   "reviews":[],
//   "discount":2.3,
//   "discountStartDate":"",
//   "discountEndData":"",
//   "supplier":"",
//   "averageRating":2.4

// }