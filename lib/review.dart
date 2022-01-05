import 'package:flutter/material.dart';
import 'package:search_product/main.dart';

class Review extends StatefulWidget {
  const Review({Key? key}) : super(key: key);

  @override
  _ReviewState createState() => _ReviewState();
}

class _ReviewState extends State<Review> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          Container(
            margin: const EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const MyHomePage(),
                        ));
                  },
                  child: const ImageIcon(
                    AssetImage('assets/left.png'),
                    size: 40,
                  ),
                ),
                const ImageIcon(
                  AssetImage('assets/menu.png'),
                  size: 30,
                ),
              ],
            ),
          ),
        ],
      )),
    );
  }
}
