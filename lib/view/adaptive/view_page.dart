import 'package:flutter/material.dart';

import '../../model/model.dart';
import 'adaptive_column.dart';

class AdaptiveLayout extends StatelessWidget {
  const AdaptiveLayout({Key? key, required this.item}) : super(key: key);

  final PageModel item;

  @override
  Widget build(BuildContext context) {
    Orientation orientation = MediaQuery.of(context).orientation;
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      if (orientation == Orientation.portrait) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Image.asset(
                item.image,
                height: height / 2,
                width: width,
              ),
            ),
            AdaptiveCoulum(item: item)
          ],
        );
      }
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            item.image,
            height: height,
            width: width / 2,
          ),
          SizedBox(
            height: height / 2,
            child: AdaptiveCoulum(item: item),
          )
        ],
      );
    });
  }
}
