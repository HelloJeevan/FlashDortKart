import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../widgets/themes.dart';

class CatalogHeader extends StatelessWidget {
  const CatalogHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
            Icon(Icons.flash_on_sharp,size: 38,).shimmer(),
            "FlashDotKart".text.xl5.bold.color(context.theme.accentColor).make(),
            Icon(Icons.flash_on_sharp,size: 38,).shimmer(),
            ],
          ),
          "Trending Products".text.xl2.bold.make(),
        ],
      );
  }
}