import 'package:flutter/material.dart';
import 'package:furniture/model/model.dart';

const _image1 = 'assets/images/image1.png';
const _image2 = 'assets/images/image2.png';
const _image3 = 'assets/images/image3.png';
const _image4 = 'assets/images/image4.png';
const _image5 = 'assets/images/image5.png';
const _image6 = 'assets/images/image6.png';
const _image7 = 'assets/images/image7.png';
const _image8 = 'assets/images/image8.png';
const _image9 = 'assets/images/image9.png';

Color _color1 = Colors.blueGrey.shade100;
Color _color2 = Colors.brown.shade100;
Color _color3 = Colors.cyan.shade100;
Color _color4 = Colors.teal.shade100;
Color _color5 = Colors.deepOrange.shade100;
Color _color6 = Colors.amber.shade100;
Color _color7 = Colors.green.shade100;
Color _color8 = Colors.blue.shade100;
Color _color9 = Colors.orange.shade100;

List<PageModel> allItems() {
  const largeString =
      'You can use a PageController to control which page \nis visible in the view. In addition to being able to control \nthe pixel offset of the content inside the PageView';
  return [
    PageModel(_color1, _image1, "Style Chair", largeString),
    PageModel(_color2, _image2, "Style Chair Lover", largeString),
    PageModel(_color3, _image3, "Engineered Wood", largeString),
    PageModel(_color4, _image4, "Soft Plastic Design", largeString),
    PageModel(_color5, _image5, "Office Chair", largeString),
    PageModel(_color6, _image6, "Morgen Wing Chair", largeString),
    PageModel(_color7, _image7, "Genoa Wing Chair", largeString),
    PageModel(_color8, _image8, "Radhe Wing Chair", largeString),
    PageModel(_color9, _image9, "Roof Top Chair", largeString)
  ];
}
