import 'package:get/get.dart';

class BottomSheetOrderController extends GetxController {
  final RxInt price = 0.obs;

  void setPrice(int price) {
    this.price.value = price;
  }
}
