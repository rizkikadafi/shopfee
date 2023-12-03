import 'package:get/get.dart';
import 'package:shopfee/data/models/cart_item_model.dart';

class CartController extends GetxController {
  final RxList<CartItem> cartItems = <CartItem>[].obs;

  void addToCart(CartItem cartItem) {
    cartItems.add(cartItem);
  }

  void removeFromCart(CartItem cartItem) {
    cartItems.remove(cartItem);
  }

  double get totalAmount {
    return cartItems.fold(0, (total, item) {
      return total + (item.coffee.smallPrice * item.quantity);
    });
  }
}
