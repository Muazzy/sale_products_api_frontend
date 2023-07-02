import 'package:flutter/material.dart';
import 'package:sale_products_api_frontend/product_list_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: const MainScreen(),
    );
  }
}

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  Map<String, String> brands = {
    'Fitted': 'https://sale-products-api.onrender.com/api/fitted',
    'Furror': 'https://sale-products-api.onrender.com/api/furror',
    'Outfitters': 'https://sale-products-api.onrender.com/api/outfitters',
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Example App'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: List.generate(
            brands.length,
            (index) => KElevatedButton(
              btnTitle: brands.keys.elementAt(index),
              url: brands.values.elementAt(index),
            ),
          ),
        ),
      ),
    );
  }
}

class KElevatedButton extends StatelessWidget {
  const KElevatedButton({
    super.key,
    required this.url,
    required this.btnTitle,
  });
  final String url;
  final String btnTitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          minimumSize: const Size(200, 60),
          padding: const EdgeInsets.symmetric(
            horizontal: 24,
            vertical: 16,
          ),
        ),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) =>
                  ProductListScreen(url: url, title: btnTitle),
            ),
          );
        },
        child: Text(
          btnTitle,
          style: const TextStyle(
            fontSize: 24,
          ),
        ),
      ),
    );
  }
}
