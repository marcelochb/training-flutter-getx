import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pocket_getx/app/components/atoms/image/image_widget.dart';
import 'package:pocket_getx/app/components/atoms/label/label_widget.dart';
import 'package:pocket_getx/app/components/atoms/text/text_widget.dart';
import 'package:pocket_getx/app/data/models/mtg_model.dart';

class CardForeignNameWidget extends StatelessWidget {
  const CardForeignNameWidget({Key key, this.item, this.isBackgroundColorWhite})
      : super(key: key);
  final ForeignNames item;
  final bool isBackgroundColorWhite;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 400,
      child: Card(
        margin: const EdgeInsets.only(left: 10, right: 10, top: 10),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ImageWidget(
                    src: item.imageUrl,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        LabelWidget(
                            text: 'Nome',
                            isBackgroundColorWhite: isBackgroundColorWhite),
                        TextWidget(
                            text: item.name,
                            isBackgroundColorWhite: isBackgroundColorWhite),
                        LabelWidget(
                            text: 'Idioma',
                            isMargingTop: true,
                            isBackgroundColorWhite: isBackgroundColorWhite),
                        TextWidget(
                            text: item.language,
                            isBackgroundColorWhite: isBackgroundColorWhite),
                        LabelWidget(
                            text: 'Tipo',
                            isMargingTop: true,
                            isBackgroundColorWhite: isBackgroundColorWhite),
                        TextWidget(
                            text: item.type,
                            isBackgroundColorWhite: isBackgroundColorWhite),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    LabelWidget(
                        text: 'Descrição',
                        isBackgroundColorWhite: isBackgroundColorWhite),
                    TextWidget(
                        text: item.text,
                        isBackgroundColorWhite: isBackgroundColorWhite)
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
