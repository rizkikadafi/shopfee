import 'package:get/get.dart';

class BottomSheetMenuController extends GetxController {
  final RxBool homeActive = true.obs;
  final RxBool historyActive = false.obs;
  final RxBool profileActive = false.obs;

  void setActivePage(bool home, bool history, bool profile) {
    homeActive.value = home;
    historyActive.value = history;
    profileActive.value = profile;
  }
}
