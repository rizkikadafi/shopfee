import 'package:get/get.dart';
import 'package:shopfee/data/models/coffee_card_model.dart';
import 'package:shopfee/services/api_endpoints.dart';
import 'package:shopfee/services/network_api_service.dart';
import 'package:shopfee/views/pages/order_page.dart';

class CoffeeController extends GetxController {
  final NetworkApiService _apiService = NetworkApiService();

  RxList<Coffee> coffees = <Coffee>[].obs;

  @override
  void onInit() {
    fetchCoffees();
    super.onInit();
  }

  Future<void> fetchCoffees() async {
    try {
      final dynamic response = await _apiService.getResponse(ApiEndpoints.getCoffees);
      final ListCoffee listCoffee = ListCoffee.fromJson(response);
      coffees.assignAll(listCoffee.coffees!);
    } catch (e) {
      print('Error fetching coffees: $e');
    }
  }

  void goToOrderPage(Coffee coffee) {
    Get.to(() => OrderPage(selectedCoffee: coffee));
  }
}
