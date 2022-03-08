import 'package:delayed_display/delayed_display.dart';
import 'package:flutter/material.dart';
import '../../model/model.dart';
import 'adaptive_column.dart';

class AdaptiveLayout extends StatefulWidget {
  const AdaptiveLayout({
    Key? key,
    required this.index,
    required this.item,
  }) : super(key: key);
  final PageModel item;
  final int index;

  @override
  State<AdaptiveLayout> createState() => _AdaptiveLayoutState();
}

class _AdaptiveLayoutState extends State<AdaptiveLayout> {
  late AnimationController rotationController;

  @override
  Widget build(BuildContext context) {
    Orientation orientation = MediaQuery.of(context).orientation;
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return LayoutBuilder(builder: (
      BuildContext context,
      BoxConstraints constraints,
    ) {
      if (orientation == Orientation.portrait) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: DelayedDisplay(
                child: Image.asset(
                  widget.item.image,
                  height: height / 2,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            AdaptiveCoulum(index: widget.index, item: widget.item)
          ],
        );
      }
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          DelayedDisplay(
            child: Image.asset(
              widget.item.image,
              height: height,
              width: width / 2,
            ),
          ),
          SizedBox(
            height: height,
            child: AdaptiveCoulum(index: widget.index, item: widget.item),
          )
        ],
      );
    });
  }
}
