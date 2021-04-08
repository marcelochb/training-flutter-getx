import 'package:flutter/cupertino.dart';
import 'package:get/instance_manager.dart';
import 'package:pocket_getx/app/modules/detail/providers/detail_provider.dart';

class DetailRepository {
  final DetailProvider apiClient = Get.find();

  getById(id) {
    return apiClient.fetchCardById(id);
  }
}
