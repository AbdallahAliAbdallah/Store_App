import 'package:appstore/home.dart';
import 'package:appstore/update_product.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(const StoreApp());
}

class StoreApp extends StatelessWidget {
  const StoreApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      //home:  HomePage(),
      routes: {
        HomePage.id: (context) {
          return HomePage();
        },
        UpdateProductpage.id: (context) {
          return  UpdateProductpage();
        }
      },
      initialRoute: HomePage.id,
    );
  }
}
