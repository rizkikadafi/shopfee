import 'package:get/get.dart';
import 'package:shopfee/data/models/coffee_card_model.dart';
import 'package:shopfee/views/pages/order_page.dart';

class CoffeeController extends GetxController {
  var coffeeList = <Coffee>[].obs;

  @override
  void onInit() {
    super.onInit();
    coffeeList.assignAll(listCoffee);
  }

  void goToOrderPage(Coffee coffee) {
    Get.to(() => OrderPage(selectedCoffee: coffee));
  }
}
