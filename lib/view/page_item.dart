import 'package:flutter/material.dart';
import 'package:furniture/model/model.dart';
import 'package:furniture/view/adaptive/view_page.dart';

class PageItem extends StatelessWidget {
  const PageItem({
    Key? key,
    required this.index,
    required this.item,
  }) : super(key: key);

  final PageModel item;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topCenter,
      children: [
        Container(
          color: item.color,
        ),
        Padding(
          padding: const EdgeInsets.all(40.0),
          child: AdaptiveLayout(index: index, item: item),
        ),
      ],
    );
  }
}
