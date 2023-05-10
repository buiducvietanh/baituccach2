import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class Menu {
  final int id;
  final String title;
  final Image image;
  Menu({required this.id, required this.title, required this.image});
}

////////////////////////////////////////////////////////////////////////////////
class Product {
  final int id;
  final int quantity;
  final String title;
  final Image image;
  Product(
      {required this.id,
      required this.quantity,
      required this.title,
      required this.image});
}

////////////////////////////////////////////////////////////////////////////////
List<Menu> FAKE_CATEGORIES = [
  Menu(
    id: 0,
    title: 'Burgers',
    image: Image.asset('assets/image/buzger.jpg'),
  ),
  Menu(
    id: 1,
    title: 'Pizza',
    image: Image.asset('assets/image/pizza.jpg'),
  ),
  Menu(
    id: 2,
    title: 'Cakes',
    image: Image.asset('assets/image/cake.jpg'),
  ),
];

////////////////////////////////////////////////////////////////////////////////
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 248, 248, 248),
        appBar: AppBar(
          elevation: 1,
          shadowColor: const Color.fromARGB(55, 190, 190, 190),
          backgroundColor: Colors.white,
          title: Text(
            'Chicago',
            style: TextStyle(
                color: Colors.black87,
                fontSize: 24,
                fontWeight: FontWeight.bold),
          ),
          leading: IconButton(
              padding: const EdgeInsets.only(left: 18),
              icon: Image.asset('images/moreicon.png'),
              onPressed: null),
          actions: [
            Container(
              height: 40,
              width: 50,
              decoration: BoxDecoration(
                  color: Color(0xFFF0C143),
                  borderRadius: BorderRadius.all(
                    Radius.circular(15),
                  )),
              child: Stack(
                children: [
                  Positioned(
                      bottom: 3,
                      right: 5,
                      child: GestureDetector(
                        onTap: () {},
                        child: Image.asset(
                          'image/profileicon.png',
                          height: 40,
                          width: 40,
                        ),
                      ))
                ],
              ),
            )
          ],
        ),
        body: SafeArea(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 32.0, top: 32),
                child: Text(
                  'Hey\n Let your order',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 32.0, top: 32, right: 32),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        color: Color(0xFFFCFBFC),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Icon(
                                Icons.search,
                                size: 34,
                              ),
                            ),
                            Expanded(
                                child: TextField(
                              decoration: InputDecoration(
                                hintText: 'Search food..',
                                hintStyle: TextStyle(
                                    fontSize: 14, color: Colors.grey[600]),
                                border: InputBorder.none,
                                focusedBorder: InputBorder.none,
                                enabledBorder: InputBorder.none,
                                errorBorder: InputBorder.none,
                                disabledBorder: InputBorder.none,
                              ),
                            )),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomAppBar(
          elevation: 0.1,
          child: Container(
            padding: EdgeInsets.only(bottom: 5, left: 20, right: 20),
            height: 65,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                BottomApp('Home', Icon(Icons.storefront_outlined)),
                BottomApp('Favuorites', Icon(Icons.favorite_outline)),
                BottomApp('Action', Icon(Icons.person_outline)),
                BottomApp('More', Icon(Icons.more_horiz_outlined)),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Column BottomApp(String content, Icon icon) {
    return Column(
      children: [
        IconButton(
          padding: EdgeInsets.only(top: 10, bottom: 10),
          icon: Icon(
            icon.icon,
            size: 30,
            color: Colors.grey,
          ),
          onPressed: () {},
        ),
        Title(
          color: Colors.grey,
          child: Text(
            content,
            style: TextStyle(fontSize: 12, height: -0, color: Colors.grey),
          ),
        ),
      ],
    );
  }
}
