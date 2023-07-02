class ProductModel {
  String? title;
  String? img;
  String? productLink;
  String? originalPrice;
  String? discountPrice;

  ProductModel(
      {this.title,
      this.img,
      this.productLink,
      this.originalPrice,
      this.discountPrice});

  ProductModel.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    img = json['img'];
    productLink = json['productLink'];
    originalPrice = json['originalPrice'];
    discountPrice = json['discountPrice'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['title'] = title;
    data['img'] = img;
    data['productLink'] = productLink;
    data['originalPrice'] = originalPrice;
    data['discountPrice'] = discountPrice;
    return data;
  }
}
