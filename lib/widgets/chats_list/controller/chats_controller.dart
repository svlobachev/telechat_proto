import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class GetToNamed {
  Future<dynamic>? get getToNamed =>
      Get.toNamed('/chat_view', arguments: 'Get is the best');
}
