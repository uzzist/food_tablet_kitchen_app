import 'package:get/get.dart';

import '../../controllers/orders_controller.dart';

class DataBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => OrderController(), fenix: true);
    // TODO: implement dependencies
  }

}