import 'package:intl/intl.dart';

class Coffee {
  String image, name, description;
  double rating;
  int price, quantity = 1;
  late String formattedPrice;

  Coffee({
    required this.image,
    required this.name,
    required this.description,
    required this.rating,
    required this.price,
  }) {
    formattedPrice =
        NumberFormat.currency(locale: 'id_ID', symbol: 'Rp').format(price);
  }
}

List<Coffee> listCoffee = [
  Coffee(
      image: "assets/img/coffee-milk.png",
      name: "Coffee Milk",
      description: "Ice americano + fresh milk",
      rating: 4.9,
      price: 25000),
  Coffee(
      image: "assets/img/cocoa-caramel-latte.png",
      name: "Cocoa Caramel Latte",
      description: "Steamed milk with mocha and caramel sauce",
      rating: 4.6,
      price: 35500),
  Coffee(
      image: "assets/img/nitro-cold-brew.png",
      name: "Nitro Cold Brew",
      description: "Cold brew with nitrogen, without sugar, velvety cream.",
      rating: 4.4,
      price: 31000),
  Coffee(
      image: "assets/img/coffee-mocha.png",
      name: "Coffe Mocha",
      description: "Espresso with mocha sauce, milk and  whipped cream.",
      rating: 4.7,
      price: 29000),
  Coffee(
      image: "assets/img/caramel-latte.png",
      name: "Caramel Latte",
      description: "Espresso, Fresh Milk and Caramel",
      rating: 4.8,
      price: 25000),
  Coffee(
      image: "assets/img/machiato.png",
      name: "Machiato",
      description: "Espresso and cream machiato",
      rating: 4.8,
      price: 25000),
  Coffee(
      image: "assets/img/chocolate-coffee.png",
      name: "Chocolate Coffee",
      description: "Chocolate + Coffee",
      rating: 4.8,
      price: 25000),
  Coffee(
      image: "assets/img/coffee-milk.png",
      name: "Coffee Milk",
      description: "Ice americano + fresh milk",
      rating: 4.9,
      price: 25000),
  Coffee(
      image: "assets/img/cocoa-caramel-latte.png",
      name: "Cocoa Caramel Latte",
      description: "Steamed milk with mocha and caramel sauce",
      rating: 4.6,
      price: 35500),
  Coffee(
      image: "assets/img/nitro-cold-brew.png",
      name: "Nitro Cold Brew",
      description: "Cold brew with nitrogen, without sugar, velvety cream.",
      rating: 4.4,
      price: 31000),
  Coffee(
      image: "assets/img/coffee-mocha.png",
      name: "Coffe Mocha",
      description: "Espresso with mocha sauce, milk and  whipped cream.",
      rating: 4.7,
      price: 29000),
  Coffee(
      image: "assets/img/caramel-latte.png",
      name: "Caramel Latte",
      description: "Espresso, Fresh Milk and Caramel",
      rating: 4.8,
      price: 25000),
  Coffee(
      image: "assets/img/machiato.png",
      name: "Machiato",
      description: "Espresso and cream machiato",
      rating: 4.8,
      price: 25000),
  Coffee(
      image: "assets/img/chocolate-coffee.png",
      name: "Chocolate Coffee",
      description: "Chocolate + Coffee",
      rating: 4.8,
      price: 25000),
];
