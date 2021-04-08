import 'package:flutter/cupertino.dart';
import 'package:get/instance_manager.dart';
import 'package:pocket_getx/app/modules/home/providers/home_provider.dart';

class HomeRepository {
  final HomeProvider apiClient = Get.find();

  getAll() {
    return apiClient.fetchCards();
  }
}
