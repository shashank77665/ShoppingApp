import 'package:flutter/material.dart';
import 'package:shopping_app/models/shoe.dart';

class Cart extends ChangeNotifier {
  List<Shoe> shoeShop = [
    Shoe(
      name: 'Zoom Freak',
      price: '236',
      imagePath:
          'https://redtape.com/cdn/shop/files/RSL0418_1.jpg?v=1711712366',
      description: 'Take forward steps design of his latest ',
    ),
    Shoe(
      name: 'Addidas ',
      price: '240',
      imagePath:
          'https://www.campusshoes.com/cdn/shop/products/FIRST_11G-787_BLK-MATTLIC.BLU.jpg?v=1705298910',
      description: 'Take forward steps desg sefdif ign of his latest ',
    ),
    Shoe(
      name: 'Abbibas',
      price: '256',
      imagePath:
          'https://5.imimg.com/data5/SELLER/Default/2023/10/351213810/KG/OH/GP/39807035/7-1800-black-white-shoes-waan-black-white-original-imagsz57knv7zdfg-500x500.jpg',
      description: 'abbibas Take forward steps design of his latest ',
    )
  ];

  List<Shoe> userCart = [];

  List<Shoe> getShoeList() {
    return shoeShop;
  }

  List<Shoe> getUserCart() {
    return userCart;
  }

  void addItemToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

  void removeItemFromCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}
