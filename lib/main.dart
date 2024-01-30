import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providertut/providers/cart_provider.dart';
import 'package:providertut/screens/cart_page.dart';
import 'package:providertut/screens/products-page.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (context) => CartProvider(),
    child: const CartApp(),
  ));
}

class CartApp extends StatelessWidget {
  const CartApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Cart App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: "/products",
      routes: {
        '/products':(context) => Productpage(),
        "/cart":(context) => CartPage(),
      },
      home: Productpage(),
    );
  }
}
