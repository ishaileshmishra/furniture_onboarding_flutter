import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:furniture/constatnt.dart';
import 'package:furniture/model/model.dart';
import 'package:furniture/view/page_item.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        textTheme: GoogleFonts.acmeTextTheme(
          Theme.of(context).textTheme,
        ),
      ),
      home: const MyHomePage(
        title: 'furniture',
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    List<PageModel> items = allItems();
    return Scaffold(body: LayoutBuilder(builder: (context, constraints) {
      return PageView.builder(
        itemCount: items.length,
        itemBuilder: (builder, index) {
          return PageItem(item: items[index]);
        },
      );
    }));
  }
}
