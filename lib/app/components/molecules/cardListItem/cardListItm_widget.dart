import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pocket_getx/app/components/atoms/button/button_widget.dart';
import 'package:pocket_getx/app/components/molecules/cardInfo/cardInfo_widget.dart';
import 'package:pocket_getx/app/data/models/mtg_model.dart';

class CardListItemWidget extends StatelessWidget {
  const CardListItemWidget({Key key, this.item}) : super(key: key);
  final Mtg item;
  @override
  Widget build(BuildContext context) {
    return Card(
      // color: HexColor('#016364'),
      elevation: 3,
      margin: const EdgeInsets.only(left: 10, right: 10, top: 10),
      child: Column(
        children: [
          CardInfoWidget(
            item: item,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ButtonWidget(
              label: 'Detalhes',
              onPress: () async {
                // Modular.to.pushNamed('/CardListPage/CardDetailPage/${item.id}');
              },
            ),
          ),
        ],
      ),
    );
  }
}
