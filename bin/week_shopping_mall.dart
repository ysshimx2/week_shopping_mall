import 'package:week_shopping_mall/week_shopping_mall.dart'
    as week_shopping_mall;
import 'dart:io';

class Product {
  String name;
  int price;

  Product(this.name, this.price);
}

class ShoppingMall {
  List<Product> products = [];
  int totalPrice = 0;

  void addTocart(Product product) {
    products.add(product);
    totalPrice += product.price;
  }

  void removeFromCart(Product product) {
    products.remove(product);
    totalPrice -= product.price;
  }

  void showProducts() {
    for (Product product in products) {
      print(product.name);
    }
  }

  void showTotalPrice() {
    print(totalPrice);
  }
}

void main(List<String> argument) {
  while (true) {
    var shoppingMall = ShoppingMall();

    print("1 입력시 판매하고 있는 상품 목록 출력");
    int input = int.parse(stdin.readLineSync()!);
  }
}
