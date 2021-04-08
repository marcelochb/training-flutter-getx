import 'package:flutter/cupertino.dart';
import 'package:get/instance_manager.dart';
import 'package:pocket_getx/app/data/models/mtg_model.dart';
import 'package:pocket_getx/app/data/providers/api_provider_interface.dart';

class DetailProvider {
  final ApiProviderInterface httpClient = Get.find();
  final _url = '/cards';

  DetailProvider();

  Future<Mtg> fetchCardById(String id) async {
    Mtg card;
    try {
      final response = await httpClient.getAll('$_url/$id');
      card = Mtg.fromJson(response.data['card']);
    } catch (e) {
      print('Error api $e');
    }
    return card;
  }
}
