import 'package:flutter/material.dart';
import 'package:furniture/model/model.dart';

const _image1 = 'assets/images/image1.png';
const _image2 = 'assets/images/image2.png';
const _image3 = 'assets/images/image3.png';
const _image4 = 'assets/images/image4.png';
const _image5 = 'assets/images/image5.png';

Color _color1 = Colors.blueGrey.shade100;
Color _color2 = Colors.brown.shade100;
Color _color3 = Colors.cyan.shade100;
Color _color4 = Colors.teal.shade100;
Color _color5 = Colors.deepOrange.shade100;

List<PageModel> allItems() {
  const largeString =
      'You can use a PageController to control which page \nis visible in the view. In addition to being able to control \nthe pixel offset of the content inside the PageView';
  return [
    PageModel("01.", _color1, _image1, "Style Chair", largeString),
    PageModel("02.", _color2, _image2, "Style Chair Lover", largeString),
    PageModel("03.", _color3, _image3, "Engineered Wood", largeString),
    PageModel("04.", _color4, _image4, "Soft Plastic Design", largeString),
    PageModel("05.", _color5, _image5, "Office Chair", largeString)
  ];
}
