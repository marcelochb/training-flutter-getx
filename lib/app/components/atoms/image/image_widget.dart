import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:pocket_getx/app/core/theme/color_theme.dart';

class ImageWidget extends StatelessWidget {
  const ImageWidget({Key? key, required this.src}) : super(key: key);
  final String src;

  Widget _container(Widget _child) {
    return Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.0),
        ),
        height: 250,
        width: 180,
        margin: const EdgeInsets.only(right: 8.0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(8.0),
          child: _child,
        ));
  }

  @override
  Widget build(BuildContext context) {
    if (src != '')
      // return _container(Image.network(src));
      return _container(
        CachedNetworkImage(
          imageUrl: src,
          placeholder: (context, url) => SpinKitFadingCircle(
            color: ColorTheme.instance.element,
            size: 50.0,
          ),
          errorWidget: (context, url, error) => Icon(Icons.error),
        ),
      );
    else
      return _container(Image.asset('assets/images/defaultImage.png'));
  }
}
