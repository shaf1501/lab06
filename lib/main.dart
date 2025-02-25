import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

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
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Iconsax.home_1), label: "Home"),
          BottomNavigationBarItem(
            icon: Icon(Iconsax.profile_circle), label: "Profile"),
        ],
      ),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Builder(
          builder: (context) => IconButton(
            icon: Icon(Icons.menu, color: Colors.black),
            onPressed: () => Scaffold.of(context).openDrawer(),
          ),
        ),
        actions: [
          Icon(Icons.search, color: Colors.black),
          SizedBox(width: 16),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.home_max,
                    size: 60,
                    color: const Color.fromARGB(255, 95, 193, 246),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Icon(Icons.logout_outlined),
                  ),
                ],
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('Profile'),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text('Logout'),
              onTap: () {},
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
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
                  (index) => Icon(Icons.star, color: Color(0xFF0099FF), size: 20),
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
                    style: TextStyle(color: Colors.red, fontSize: 14),
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
                                  ? Color(0xFF0004FF)
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
              SizedBox(height: 16),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFFFF2A00),
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
      ),
    );
  }
}
