import 'package:delayed_display/delayed_display.dart';
import 'package:flutter/material.dart';
import 'package:furniture/model/model.dart';

class AdaptiveCoulum extends StatelessWidget {
  const AdaptiveCoulum({
    Key? key,
    required this.index,
    required this.item,
  }) : super(key: key);

  final PageModel item;
  final int index;
  @override
  Widget build(BuildContext context) {
    Orientation orientation = MediaQuery.of(context).orientation;
    double spacing = orientation == Orientation.landscape ? 6 : 12;
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('$index', style: Theme.of(context).textTheme.headline4),
        SizedBox(height: spacing),
        Text(item.title, style: Theme.of(context).textTheme.headline5),
        SizedBox(height: spacing),
        Text(
          item.subtitle,
          style: const TextStyle(fontSize: 14),
        ),
        SizedBox(height: spacing),
        const Align(
          alignment: Alignment.center,
          child: DelayedDisplay(
            child: FloatingActionButton(
              onPressed: null,
              backgroundColor: Colors.black,
              child: Icon(Icons.shopping_cart),
            ),
          ),
        )
      ],
    );
  }
}
