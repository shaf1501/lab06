import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ProductPage(),
    );
  }
}

class ProductPage extends StatefulWidget {
  @override
  _ProductPageState createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  int selectedSize = 37;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Icon(Icons.arrow_back, color: Colors.black),
        actions: [
          Icon(Icons.search, color: Colors.black),
          SizedBox(width: 16),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CachedNetworkImage(
              imageUrl: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRzUSBfV6sGUSCqgs9dJhvygkUY6ALW9yUhVQ&s",
              placeholder: (context, url) => CircularProgressIndicator(),
              errorWidget: (context, url, error) => Icon(Icons.error),
            ),
            Center(
              child: Image.network(
                'data:image/jpeg;base64,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',
              ),
            ),
            SizedBox(height: 16),
            Text(
              'Rolex Watch',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            Row(
              children: List.generate(
                5,
                (index) => Icon(Icons.star, color: const Color.fromARGB(255, 0, 153, 255), size: 20),
              ),
            ),
            SizedBox(height: 8),
            Row(
              children: [
                Text(
                  '₦ 150,000',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(width: 10),
                Text(
                  '₦ 100,000',
                  style: TextStyle(
                    fontSize: 16,
                    decoration: TextDecoration.lineThrough,
                    color: Colors.grey,
                  ),
                ),
                Spacer(),
                Text(
                  'Out of Stock',
                  style: TextStyle(color: const Color.fromARGB(255, 225, 4, 4), fontSize: 14),
                ),
              ],
            ),
            SizedBox(height: 16),
            Text(
              'About',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              'The Oyster Perpetual Submariner in Oystersteel with a Cerachrom bezel insert in black ceramic and a black dial with large luminescent hour markers.',
              style: TextStyle(color: Colors.grey[700]),
            ),
            SizedBox(height: 16),
            Text(
              'Select Size',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [36, 37, 38, 39, 40, 41]
                  .map((size) => GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedSize = size;
                          });
                        },
                        child: Container(
                          padding: EdgeInsets.all(12),
                          decoration: BoxDecoration(
                            color: selectedSize == size
                                ? const Color.fromARGB(255, 0, 4, 255)
                                : Colors.grey[200],
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Text(
                            '$size',
                            style: TextStyle(
                              color: selectedSize == size
                                  ? Colors.white
                                  : Colors.black,
                            ),
                          ),
                        ),
                      ))
                  .toList(),
            ),
            Spacer(),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 255, 42, 0),
                  padding: EdgeInsets.symmetric(vertical: 16),
                ),
                child: Text(
                  'Add to cart',
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
