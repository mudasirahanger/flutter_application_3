import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
          appBar: AppBar(
            title: const Text(
              'Opencart',
            ),
            backgroundColor: Colors.deepPurple,
            actions: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: IconButton(
                  icon: const Icon(Icons.search_outlined),
                  tooltip: 'cart',
                  onPressed: () {
                    // handle the press
                  },
                ),
              ),
              IconButton(
                icon: const Icon(Icons.favorite_rounded),
                tooltip: 'wishlist',
                onPressed: () {
                  // handle the press
                },
              ),
              IconButton(
                icon: const Icon(Icons.shopping_bag),
                tooltip: 'search',
                onPressed: () {
                  // handle the press
                },
              ),
            ],
          ),
          body: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Image.asset('assets/images/banner2.jpg', width: 490),
              Image.network(
                'https://picsum.photos/250?image=9',
              )
            ],
          ),
          drawer: Drawer(
            child: ListView(
              padding: const EdgeInsets.only(top: 20.0),
              children: const [
                // DrawerHeader(
                //   child: Text(
                //     'Drawer Header',
                //     style: TextStyle(
                //       color: Colors.black,
                //       fontSize: 24,
                //     ),
                //   ),
                // ),
                ListTile(
                  leading: Icon(Icons.home),
                  title: Text('Home'),
                ),
                ListTile(
                  leading: Icon(Icons.person),
                  title: Text('Login'),
                ),
              ],
            ),
          ),
          bottomNavigationBar: BottomNavigationBar(
            items: const [
              BottomNavigationBarItem(
                  icon: Icon(Icons.home_filled),
                  label: 'Home',
                  backgroundColor: Colors.grey),
              BottomNavigationBarItem(
                  icon: Icon(Icons.dashboard_customize_rounded),
                  label: 'Categories'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.shopping_bag_rounded), label: 'Cart'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person), label: 'Profile'),
            ],
          ),
        ));
  }
}
