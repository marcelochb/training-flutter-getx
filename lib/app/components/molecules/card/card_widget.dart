import 'package:flutter/material.dart';
import 'package:pocket_getx/app/components/atoms/button/button_widget.dart';
import 'package:pocket_getx/app/components/molecules/cardMtg/cardMtg_widget.dart';

class CardWidget extends StatelessWidget {
  final VoidCallback navigateToDetail;
  final String name;
  final String artist;
  final String type;
  final String text;
  final String imageUrl;

  const CardWidget(
      {Key? key,
      required this.navigateToDetail,
      required this.name,
      required this.artist,
      required this.type,
      required this.text,
      required this.imageUrl})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Card(
      // color: HexColor('#016364'),
      elevation: 3,
      margin: const EdgeInsets.only(left: 10, right: 10, top: 10),
      child: Column(
        children: [
          CardMtgWidget(
            name: name,
            artist: artist,
            imageUrl: imageUrl,
            type: type,
            text: text,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ButtonWidget(
              label: 'Detalhes',
              onPress: () => navigateToDetail(),
            ),
          ),
        ],
      ),
    );
  }
}
