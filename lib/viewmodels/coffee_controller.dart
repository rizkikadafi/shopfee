import 'package:get/get.dart';
import 'package:shopfee/data/models/coffee_card_model.dart';
import 'package:shopfee/services/api_endpoints.dart';
import 'package:shopfee/services/network_api_service.dart';
import 'package:shopfee/views/pages/order_page.dart';

class CoffeeController extends GetxController {
  var isLoading = true.obs;
  final NetworkApiService _apiService = NetworkApiService();

  RxList<Coffee> coffees = <Coffee>[].obs;

  Future<void> fetchCoffees() async {
    try {
      isLoading.value = true;
      Future.delayed(const Duration(seconds:5));
      final dynamic response =
          await _apiService.getResponse(ApiEndpoints.getCoffees);
      final ListCoffee listCoffee = ListCoffee.fromJson(response);
      coffees.assignAll(listCoffee.coffees!);
    } catch (e) {
      print('Error fetching coffees: $e');
    } finally {
      isLoading.value = false;
    }
  }

  void goToOrderPage(Coffee coffee) {
    Get.to(() => OrderPage(selectedCoffee: coffee));
  }
}
