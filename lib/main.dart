import 'package:flutter/material.dart';
import 'package:flutter_app1/allcollections.dart';
import 'package:flutter_app1/newlaunches.dart';
import 'shop.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(), //seperated scaffold as HomePage
    );
  }
}

class HomePage extends StatefulWidget {
  //const name({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String buttonName = 'Shop';
  String buttonName2 = 'New Launches';
  String buttonName3 = 'All Collections'; //initialize variables here
  int currentIndex = 0;
  bool firstValue = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5E8C7),
      appBar: AppBar(
        backgroundColor: const Color(0xFFF5E8C7),
        title: const Text(
          'Hyphen',
          style: TextStyle(
            fontFamily: 'Roboto',
            fontSize: 30,
            fontWeight: FontWeight.w400, //sleekness to the title
            color: Color(0xFF333333),
          ),
        ),
        centerTitle: true,
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                //Add bgcolor like this
                color: Color(0xFFA3B18A),
              ),
              accountName: Text('Puja Nikam'),
              accountEmail: Text('puja.nikam242@vit.edu'),
              currentAccountPicture: CircleAvatar(
                foregroundImage: AssetImage(
                    "lib/images/profile.png"), //when AssetImage, we use "" in ()
              ),
            ),
            ListTile(
              onTap: () {
                setState(() {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const DrawList1()),
                  );
                });
              },
              title: const Text('Gifting'),
              leading: const Icon(Icons.card_giftcard),
              tileColor: const Color(0xFF333333).withOpacity(0.5),
            ),
            ListTile(
              onTap: () {
                setState(() {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const DrawList2()),
                  );
                });
              },
              title: const Text('Accessories'),
              leading: const Icon(Icons.diamond),
              tileColor: const Color(0xFF333333).withOpacity(0.4),
            ),
            ListTile(
              onTap: () {
                setState(() {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const DrawList3()),
                  );
                });
              },
              title: const Text('Blogs'),
              leading: const Icon(Icons.article),
              tileColor: const Color(0xFF333333).withOpacity(0.3),
            ),
            ListTile(
              onTap: () {
                setState(() {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const DrawList4()),
                  );
                });
              },
              title: const Text('Reviews'),
              leading: const Icon(Icons.edit),
              tileColor: const Color(0xFF333333).withOpacity(0.2),
            ),
          ],
        ),
      ),
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              //ROW FOR BUTTONS
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(7),
                  child: Row(
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          setState(
                            () {
                              //buttonName = 'Opening';
                              //print('Shop pressed');
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Shop()),
                              ); //SEMICOLON AT CLOSURE OF NAVIGATOR.PUSH
                            },
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFFA3B18A),
                          foregroundColor: Colors.white, //shape comes in style
                          elevation: 8,
                          //after style

                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        child: Text(buttonName),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(7),
                  child: Row(
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          setState(
                            () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const NewLaunches(),
                                ),
                              );
                            },
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFFA3B18A),
                          foregroundColor: Colors.white,
                          elevation: 8,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        child: Text(buttonName2),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(7),
                  child: Row(
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          setState(
                            () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const AllCollections()),
                              );
                            },
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFFA3B18A),
                          foregroundColor: Colors.white,
                          elevation: 8,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        child: Text(buttonName3),
                      ),
                    ],
                  ),
                ),
              ], //children
            ),
            Row(
              children: [
                //FIRST EXP
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    child: AspectRatio(
                      aspectRatio: 1,
                      child: Image.asset(
                        'lib/images/prod1.png',
                        fit: BoxFit.cover, //fit comes in Image.asset
                      ),
                    ),
                  ),
                ),

                //child doesn't need square brackets

                //SECOND EXP
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    child: AspectRatio(
                      aspectRatio: 1,
                      child: Image.asset(
                        'lib/images/prod2.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const Row(
              children: [
                Expanded(
                  child: Text(
                    'Product1',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                    ),
                  ),
                ),
                Expanded(
                  child: Text(
                    'Product2',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    child: AspectRatio(
                      aspectRatio: 1,
                      child: Image.asset(
                        'lib/images/prod3.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    child: AspectRatio(
                      aspectRatio: 1,
                      child: Image.asset(
                        'lib/images/prod4.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const Row(
              children: [
                Expanded(
                  child: Text(
                    'Product3',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                    ),
                  ),
                ),
                Expanded(
                  child: Text(
                    'Product4',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),

      //semicolon after IndexedStack

      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color(0xFF333333),
        selectedItemColor: const Color.fromARGB(255, 170, 186, 143),
        unselectedItemColor: const Color(0xFF7D7D7D),
        items: const [
          BottomNavigationBarItem(
            label: 'Home',
            icon: Icon(
              Icons.home_outlined,
              //color: Colors.white,

              size: 25,
            ),
          ),
          BottomNavigationBarItem(
            label: 'Favourite',
            icon: Icon(
              Icons.favorite_border_outlined,
              //color: Colors.white,
              size: 25,
            ),
          ),
          BottomNavigationBarItem(
            label: 'Settings',
            icon: Icon(
              Icons.settings_outlined,
              //color: Colors.white,

              size: 25,
            ),
          ),
        ],
        currentIndex: currentIndex,
        onTap: (int index) {
          setState(
            () {
              currentIndex = index;
            },
          );

          if (index == 1) {
            setState(
              () {
                IndexedStack(
                  index: currentIndex,
                  children: [
                    HomePage(),
                    const NavItem2(), //add the name of class here
                    const NavItem3(), //need to define all in body aswell
                  ],
                ); //semicolon after IndexedStack
              },
            );
          } else if (index == 2) {
            setState(
              () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const NavItem3()),
                );
              },
            );
          }
        },
      ),
    );
  }
}

//All other classes in the same file after the last closing }

//DRAWER LIST ITEMS CLASSES START HERE
class DrawList1 extends StatelessWidget {
  const DrawList1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFF5E8C7),
        title: const Text(
          'Gifting',
          style: TextStyle(
            fontFamily: 'Roboto',
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      backgroundColor: const Color(0xFFF5E8C7),
    );
  }
}

class DrawList2 extends StatelessWidget {
  const DrawList2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFF5E8C7),
        title: const Text(
          'Accessories',
          style: TextStyle(
            fontFamily: 'Roboto',
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      backgroundColor: const Color(0xFFF5E8C7),
    );
  }
}

class DrawList3 extends StatelessWidget {
  const DrawList3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFF5E8C7),
        title: const Text(
          'Blogs',
          style: TextStyle(
            fontFamily: 'Roboto',
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      backgroundColor: const Color(0xFFF5E8C7),
    );
  }
}

class DrawList4 extends StatelessWidget {
  const DrawList4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFF5E8C7),
        title: const Text(
          'Reviews',
          style: TextStyle(
            fontFamily: 'Roboto',
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      backgroundColor: const Color(0xFFF5E8C7),
    );
  }
}

//NAVBAR LIST ITEMS CLASSES START HERE

class NavItem2 extends StatelessWidget {
  const NavItem2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFF5E8C7),
        title: const Text(
          'Favourite',
          style: TextStyle(
            fontFamily: 'Roboto',
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      backgroundColor: const Color(0xFFF5E8C7),
    );
  }
}

class NavItem3 extends StatelessWidget {
  const NavItem3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFF5E8C7),
        title: const Text(
          'Settings',
          style: TextStyle(
            fontFamily: 'Roboto',
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      backgroundColor: const Color(0xFFF5E8C7),
    );
  }
}
