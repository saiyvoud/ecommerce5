class ProductModel {
  // ຮັບຄ່າຈາກພາຍນອກ
  final String? productId;
  final String? name;
  final String? desc;
  final int? amount;
  final int? price;
  final String? image;
// ເອີ້ນໃຊ້ພາຍໃນ
  ProductModel({
    this.productId,
    this.name,
    this.desc,
    this.amount,
    this.price,
    this.image,
  });
  // ເປັນການສ້າງ form ຂໍ້ມູນ json
  factory ProductModel.formJson(Map<String, dynamic> json) => ProductModel(
        productId: json['productId'],
        name: json['name'],
        desc: json['desc'],
        amount: json['amount'],
        price: json['price'],
        image: json['image'],
      );

  Map<String, dynamic> toJson() => {
        "productId": productId,
        "name": name,
        "desc": desc,
        "amount": amount,
        "price": price,
        "image": image,
      };
}
