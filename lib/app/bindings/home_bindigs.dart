import 'package:get/get.dart';
import '../controllers/home_controller.dart';

// ignore: public_member_api_docs
class HomeBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(() => HomeController());
  }
}
