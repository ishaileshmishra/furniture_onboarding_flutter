import 'package:flutter/material.dart';
import 'package:pageview_flutter/model/model.dart';
import 'package:pageview_flutter/view/adaptive/view_page.dart';

class PageItem extends StatelessWidget {
  const PageItem({Key? key, required this.item}) : super(key: key);

  final PageModel item;

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
          child: AdaptiveLayout(item: item),
        ),
      ],
    );
  }
}
