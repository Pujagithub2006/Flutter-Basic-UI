import 'package:flutter/material.dart';

class Shop extends StatelessWidget {
  const Shop({super.key});

  @override
  Widget build(BuildContext context) {
    return ShopPage();
  }
}

class ShopPage extends StatefulWidget {
  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  bool firstValue = false;
  bool secondValue = false;
  bool thirdValue = false;
  bool fourthValue = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFF5E8C7),
        title: const Text(
          'Shop',
          style: TextStyle(
            fontFamily: 'Roboto',
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
        //centerTitle: true,
      ),
      backgroundColor: const Color(0xFFF5E8C7),
      body: //SingleChildScrollView with Column for scrolling additional widgets outside Listview
          //no need of Column for only ListView (already scrollable)

          ListView(
        children: [
          const SizedBox(
            height: 20,
          ),

          Row(
            children: [
              SizedBox(
                width: 200,
                height: 200,
                child: AspectRatio(
                  //for adapting to various screen sizes
                  aspectRatio: 1,
                  child: Image.asset(
                    'lib/images/prod1.png',
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              const SizedBox(width: 40), //adds a space bw image and checkbox
              const Text(
                'Product 1',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),

              Checkbox(
                value: firstValue,
                onChanged: (value) {
                  setState(
                    () {
                      firstValue = value!;
                    },
                  );
                },
              ),
            ],
          ),

          const SizedBox(
              height:
                  20), //use this, though have used expanded, it will not add space bw list items

          Row(
            children: [
              SizedBox(
                width: 200,
                height: 200,
                child: AspectRatio(
                  aspectRatio: 1,
                  child: Image.asset(
                    'lib/images/prod2.png',
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              const SizedBox(width: 40),
              const Text(
                'Product 2',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              Checkbox(
                value: secondValue,
                onChanged: (value) {
                  setState(
                    () {
                      secondValue = value!;
                    },
                  );
                },
              ),
            ],
          ),

          const SizedBox(
            height: 20,
          ),

          Row(
            children: [
              SizedBox(
                width: 200,
                height: 200,
                child: AspectRatio(
                  aspectRatio: 1,
                  child: Image.asset(
                    'lib/images/prod3.png',
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              const SizedBox(width: 40),
              const Text(
                'Product 3',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              Checkbox(
                value: thirdValue,
                onChanged: (value) {
                  setState(
                    () {
                      thirdValue = value!;
                    },
                  );
                },
              ),
            ],
          ),

          const SizedBox(
            height: 20,
          ),

          Row(
            children: [
              SizedBox(
                width: 200,
                height: 200,
                child: AspectRatio(
                  aspectRatio: 1,
                  child: Image.asset(
                    'lib/images/prod4.png',
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              const SizedBox(width: 40),
              const Text(
                'Product 4',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              Checkbox(
                value: fourthValue,
                onChanged: (value) {
                  setState(
                    () {
                      fourthValue = value!;
                    },
                  );
                },
              ),
            ],
          ),

          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
