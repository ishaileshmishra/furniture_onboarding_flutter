import 'package:flutter/material.dart';
import 'package:pageview_flutter/model/model.dart';

class AdaptiveCoulum extends StatelessWidget {
  const AdaptiveCoulum({
    Key? key,
    required this.item,
  }) : super(key: key);

  final PageModel item;
  @override
  Widget build(BuildContext context) {
    Orientation orientation = MediaQuery.of(context).orientation;
    double spacing = orientation == Orientation.landscape ? 8 : 20;
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(item.position,
            style: const TextStyle(fontSize: 32, fontWeight: FontWeight.bold)),
        SizedBox(height: spacing),
        Text(
          item.title,
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: spacing),
        Text(
          item.subtitle,
        ),
        SizedBox(height: spacing),
        const Align(
          alignment: Alignment.center,
          child: FloatingActionButton(
            onPressed: null,
            backgroundColor: Colors.black,
            child: Icon(Icons.shopping_cart),
          ),
        )
      ],
    );
  }
}
