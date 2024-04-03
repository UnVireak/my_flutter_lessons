class ProductModel{
  int id;
  String name;
  int qty;
  double price;

  ProductModel({this.id = 0, this.name = "no name", this.qty = 0, this.price = 0});


  @override
  String toString() {
    return "ProductModel[id=$id, name=$name, qty=$qty, price=$price]";
  }
}

List<ProductModel> productList = [
  ProductModel(id: 1, name: "iPhone 11", qty: 50, price: 599),
  ProductModel(id: 2, name: "iPhone 11 Pro Max", qty: 20, price: 799),
  ProductModel(id: 3, name: "iPhone 12 Pro", qty: 30, price: 699),
  ProductModel(id: 4, name: "iPhone 12 Pro Max", qty: 10, price: 899),
  ProductModel(id: 5, name: "iPhone 13", qty: 15, price: 899),
  ProductModel(id: 6, name: "iPhone 13 Pro Max", qty: 20, price: 999),
  ProductModel(id: 7, name: "iPhone 14", qty: 15, price: 999),
  ProductModel(id: 8, name: "iPhone 14 Pro Max", qty: 130, price: 1099),
];