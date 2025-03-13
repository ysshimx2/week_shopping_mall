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
    int input = 0;

    List<Product> products = [
      Product("셔츠", 45000),
      Product("원피스", 30000),
      Product("반팔티", 35000),
      Product("반바지", 30000),
      Product("양말", 5000),
    ];
    print(
      "[1] 상품 목록 보기 / [2] 장바구니에 담기 / [3] 장바구니에 담긴 상품의 총 가격 보기 / [4] 프로그램 종료",
    );
    input = int.parse(stdin.readLineSync()!);

    if (input == 1) {
      for (Product product in products) {
        print('${product.name} : ${product.price}');
      }
    } else if (input == 2) {
      print("장바구니에 담을 상품을 선택해주세요.");
      for (Product product in products) {
        print(product.name);
      }
      String productName = stdin.readLineSync()!;
      for (Product product in products) {
        if (product.name == productName) {
          shoppingMall.addTocart(product);
        }
      }
    } else if (input == 3) {
      shoppingMall.showTotalPrice();
    } else if (input == 4) {
      break;
    }
  }
}
