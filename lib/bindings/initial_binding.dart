import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/bindings_interface.dart';

import '../services/storage_service.dart';

class InitialBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(StorageService());
  }
}
