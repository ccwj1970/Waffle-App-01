// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown[700],
        iconTheme: IconThemeData(color: Colors.white),
        title: Text(
          "   B E L G I A N   C A F E ",
          style: TextStyle(
            fontSize: 25.0,
            fontWeight: FontWeight.w500,
            color: Colors.white, // Ensure the text color is white
          ),
        ),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.person))],
      ),
      drawer: FractionallySizedBox(
        widthFactor: 0.67,
        child: Drawer(
          child: Container(
            color: Color.fromARGB(255, 255, 212, 42),
            child: Stack(
              children: [
                ListView(
                  padding: EdgeInsets
                      .zero, // To avoid padding at the top of the drawer
                  children: [
                    DrawerHeader(
                      decoration: BoxDecoration(
                        color: Colors.brown[700],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Menu',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                              height:
                                  10), // Add some spacing between the text and the image
                        ],
                      ),
                    ),
                    SizedBox(
                        height: 40), // Move the first ListTile down by 20px
                    ListTile(
                      leading: Icon(Icons.cookie),
                      title: Text('Waffle'),
                      onTap: () {
                        Navigator.pop(context);
                      },
                    ),
                    ListTile(
                      leading: Icon(Icons.cookie_outlined),
                      title: Text('Cookies'),
                      onTap: () {
                        Navigator.pop(context);
                      },
                    ),
                    ListTile(
                      leading: Icon(Icons.coffee),
                      title: Text('Coffee'),
                      onTap: () {
                        Navigator.pop(context);
                      },
                    ),
                    ListTile(
                      leading: Icon(Icons.fastfood),
                      title: Text('Fries'),
                      onTap: () {
                        Navigator.pop(context);
                      },
                    ),
                    ListTile(
                      leading: Icon(Icons.cake),
                      title: Text('Cake'),
                      onTap: () {
                        Navigator.pop(context);
                      },
                    ),
                    ListTile(
                      leading: Icon(Icons.icecream),
                      title: Text('Ice Cream'),
                      onTap: () {
                        Navigator.pop(context);
                      },
                    ),
                  ],
                ),
                Positioned(
                  top: 80, // Adjust the position to be 20px lower than before
                  left: 50, // Adjust the position as needed
                  child: Image.network(
                    'https://www.foodfresh.com.sg/Content/Admin/Product_Images/fc33a38b5e3d40dc85d8c39b1b3e540d.png', // Replace with your image URL
                    height: 220,
                    width: 200,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  top:
                      670, // Adjust the position to place it under the "Ice Cream" list tile
                  left: 5, // Adjust the position as needed
                  child: Image.network(
                    'https://static.vecteezy.com/system/resources/previews/033/263/587/original/hand-holding-belgium-national-flag-isolated-transparent-simple-illustration-free-png.png', // Replace with your image URL
                    height: 200,
                    width: 200,
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: HomePage(),
    debugShowCheckedModeBanner: false, // Disable the debug banner
  ));
}
