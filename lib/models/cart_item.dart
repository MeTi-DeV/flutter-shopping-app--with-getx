class CartItemModel {
  static const ID = "id";
  static const IMAGE = "image";
  static const NAME = "name";
  static const QUANTITY = "quantity";
  static const PRICE = "price";
  static const COST = "cost";
  static const PRODUCT_ID = "productId";

  String id;
  String image;
  String name;
  int quantity;
  double cost;
  double price;
  String productId;
  CartItemModel(
      {this.id,
      this.image,
      this.name,
      this.quantity,
      this.cost,
      this.price,
      this.productId});

  CartItemModel.fromMap(Map<String, dynamic> data) {
    id = data[ID];
    image = data[IMAGE];
    name = data[NAME];
    quantity = data[QUANTITY];
    cost = data[COST].toDouble();
    price = data[PRICE].toDouble();
    productId = data[PRODUCT_ID];
  }
  Map toJson() => {
        ID: id,
        PRODUCT_ID: productId,
        IMAGE: image,
        NAME: name,
        QUANTITY: quantity,
        COST: price * quantity,
        PRICE: price
      };
}
