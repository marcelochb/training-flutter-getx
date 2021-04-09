import 'package:flutter/cupertino.dart';
import 'package:pocket_getx/app/components/atoms/image/image_widget.dart';
import 'package:pocket_getx/app/components/atoms/label/label_widget.dart';
import 'package:pocket_getx/app/components/atoms/text/text_widget.dart';

class CardMtgWidget extends StatelessWidget {
  final String name;
  final String artist;
  final String type;
  final String text;
  final String imageUrl;
  const CardMtgWidget(
      {Key key,
      this.isBackgroundColorWhite = true,
      this.name,
      this.artist,
      this.type,
      this.text,
      this.imageUrl})
      : super(key: key);
  final bool isBackgroundColorWhite;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ImageWidget(
                src: imageUrl,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    LabelWidget(
                        text: 'Nome',
                        isBackgroundColorWhite: isBackgroundColorWhite),
                    TextWidget(
                        text: name,
                        isBackgroundColorWhite: isBackgroundColorWhite),
                    LabelWidget(
                        text: 'Artista',
                        isMargingTop: true,
                        isBackgroundColorWhite: isBackgroundColorWhite),
                    TextWidget(
                        text: artist,
                        isBackgroundColorWhite: isBackgroundColorWhite),
                    LabelWidget(
                        text: 'Tipo',
                        isMargingTop: true,
                        isBackgroundColorWhite: isBackgroundColorWhite),
                    TextWidget(
                        text: type,
                        isBackgroundColorWhite: isBackgroundColorWhite),
                  ],
                ),
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              LabelWidget(
                  text: 'Descrição',
                  isBackgroundColorWhite: isBackgroundColorWhite),
              TextWidget(
                  text: text, isBackgroundColorWhite: isBackgroundColorWhite)
            ],
          ),
        ),
      ],
    );
  }
}
