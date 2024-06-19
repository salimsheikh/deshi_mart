class ReviewModel {
  String? reviewerName;
  int? rating;
  String? comment;
  String? reviewDate;

  ReviewModel({this.reviewerName, this.rating, this.comment, this.reviewDate});

  ReviewModel.fromJson(Map<String, dynamic> json) {
    if (json["reviewerName"] is String) {
      reviewerName = json["reviewerName"];
    }
    if (json["rating"] is int) {
      rating = json["rating"];
    }
    if (json["comment"] is String) {
      comment = json["comment"];
    }
    if (json["reviewDate"] is String) {
      reviewDate = json["reviewDate"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data["reviewerName"] = reviewerName;
    data["rating"] = rating;
    data["comment"] = comment;
    data["reviewDate"] = reviewDate;
    return data;
  }
}

// {
//   "reviewerName": "",
//   "rating": 0,
//   "comment": "",
//   "reviewDate": ""
// }