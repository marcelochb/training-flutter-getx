import 'package:flutter/cupertino.dart';
import 'package:get/instance_manager.dart';
import 'package:pocket_getx/app/data/models/mtg_model.dart';
import 'package:pocket_getx/app/data/providers/api_provider_interface.dart';

class HomeProvider {
  final ApiProviderInterface httpClient = Get.find();
  final _url = '/cards';
  final _pageLimitByRequest = 3;

  HomeProvider();

  Future<List<Mtg>> fetchCards({int initialPage = 1}) async {
    List<Mtg> cards = [];
    try {
      final response = await httpClient.getPaginated(
        _url,
        initialPage,
        _pageLimitByRequest,
      );
      final list = response.data['cards'] as List;
      for (var json in list) {
        final card = Mtg.fromJson(json);
        cards.add(card);
      }
    } catch (e) {
      print('erro api $e');
      throw Exception('Problemas para recuperar os dados');
    }

    return cards;
  }
}
