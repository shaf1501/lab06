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
            Center(
              child: Image.network(
                'asset\image\apple_watch.jpg', 
                height: 200,
              ),
            ),
            SizedBox(height: 16),
            Text(
              'Apple Watch Series 6',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            Row(
              children: List.generate(
                5,
                (index) => Icon(Icons.star, color: Colors.orange, size: 20),
              ),
            ),
            SizedBox(height: 8),
            Row(
              children: [
                Text(
                  '₦ 45,000',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(width: 10),
                Text(
                  '₦ 55,000',
                  style: TextStyle(
                    fontSize: 16,
                    decoration: TextDecoration.lineThrough,
                    color: Colors.grey,
                  ),
                ),
                Spacer(),
                Text(
                  'Available in Stock',
                  style: TextStyle(color: Colors.green, fontSize: 14),
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
              'The upgraded S6 SIP runs up to 20 percent faster, allowing apps to also launch 20 percent faster, while maintaining the same all-day 18-hour battery life.',
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
                                ? Colors.orange
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
                  backgroundColor: Colors.orange,
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
