import 'package:get/get.dart';

class QuantityController extends GetxController {
  final RxInt quantity = 1.obs;

  void setQuantity(int value) {
    quantity.value = value;
  }
}
