import 'package:get/get.dart';
import 'package:todo/controllers/public_controller.dart';
import 'package:todo/controllers/serch_controller.dart';

class MyBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(SearchController());
    Get.put(PublicController());
  }
}
