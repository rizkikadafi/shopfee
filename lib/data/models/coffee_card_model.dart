import 'package:intl/intl.dart';

class Coffee {
  String image, name, description;
  double rating;
  int smallPrice, mediumPrice, largePrice;
  late String formattedSmallPrice, formattedMediumPrice, formattedLargePrice;

  Coffee(
      {required this.image,
      required this.name,
      required this.description,
      required this.rating,
      required this.smallPrice,
      required this.mediumPrice,
      required this.largePrice}) {
    formattedSmallPrice = formattedPrice(smallPrice);
    formattedMediumPrice = formattedPrice(mediumPrice);
    formattedLargePrice = formattedPrice(largePrice);
  }

  factory Coffee.fromJson(Map<String, dynamic> json) => Coffee(
      name: json['name'],
      description: json['description'],
      rating: json['rating'],
      smallPrice: json['small_price'],
      mediumPrice: json['medium_price'],
      largePrice: json['large_price'],
      image: json['image']);

  String formattedPrice(int price) {
    return NumberFormat.currency(locale: 'id_ID', symbol: 'Rp').format(price);
  }
}

class ListCoffee {
  List<Coffee>? coffees;
  ListCoffee({this.coffees});

  factory ListCoffee.fromJson(Map<String, dynamic> json) => ListCoffee(
        coffees: List<Coffee>.from(json['coffees'].map((value) => Coffee.fromJson(value))),
      );
}

// List<Coffee> listCoffee = [
//   Coffee(
//       image: "assets/img/coffee-milk.png",
//       name: "Coffee Milk",
//       description: "Ice americano + fresh milk",
//       rating: 4.9,
//       price: 25000),
//   Coffee(
//       image: "assets/img/cocoa-caramel-latte.png",
//       name: "Cocoa Caramel Latte",
//       description: "Steamed milk with mocha and caramel sauce",
//       rating: 4.6,
//       price: 35500),
//   Coffee(
//       image: "assets/img/nitro-cold-brew.png",
//       name: "Nitro Cold Brew",
//       description: "Cold brew with nitrogen, without sugar, velvety cream.",
//       rating: 4.4,
//       price: 31000),
//   Coffee(
//       image: "assets/img/coffee-mocha.png",
//       name: "Coffe Mocha",
//       description: "Espresso with mocha sauce, milk and  whipped cream.",
//       rating: 4.7,
//       price: 29000),
//   Coffee(
//       image: "assets/img/caramel-latte.png",
//       name: "Caramel Latte",
//       description: "Espresso, Fresh Milk and Caramel",
//       rating: 4.8,
//       price: 25000),
//   Coffee(
//       image: "assets/img/machiato.png",
//       name: "Machiato",
//       description: "Espresso and cream machiato",
//       rating: 4.8,
//       price: 25000),
//   Coffee(
//       image: "assets/img/chocolate-coffee.png",
//       name: "Chocolate Coffee",
//       description: "Chocolate + Coffee",
//       rating: 4.8,
//       price: 25000),
//   Coffee(
//       image: "assets/img/coffee-milk.png",
//       name: "Coffee Milk",
//       description: "Ice americano + fresh milk",
//       rating: 4.9,
//       price: 25000),
//   Coffee(
//       image: "assets/img/cocoa-caramel-latte.png",
//       name: "Cocoa Caramel Latte",
//       description: "Steamed milk with mocha and caramel sauce",
//       rating: 4.6,
//       price: 35500),
//   Coffee(
//       image: "assets/img/nitro-cold-brew.png",
//       name: "Nitro Cold Brew",
//       description: "Cold brew with nitrogen, without sugar, velvety cream.",
//       rating: 4.4,
//       price: 31000),
//   Coffee(
//       image: "assets/img/coffee-mocha.png",
//       name: "Coffe Mocha",
//       description: "Espresso with mocha sauce, milk and  whipped cream.",
//       rating: 4.7,
//       price: 29000),
//   Coffee(
//       image: "assets/img/caramel-latte.png",
//       name: "Caramel Latte",
//       description: "Espresso, Fresh Milk and Caramel",
//       rating: 4.8,
//       price: 25000),
//   Coffee(
//       image: "assets/img/machiato.png",
//       name: "Machiato",
//       description: "Espresso and cream machiato",
//       rating: 4.8,
//       price: 25000),
//   Coffee(
//       image: "assets/img/chocolate-coffee.png",
//       name: "Chocolate Coffee",
//       description: "Chocolate + Coffee",
//       rating: 4.8,
//       price: 25000),
// ];
