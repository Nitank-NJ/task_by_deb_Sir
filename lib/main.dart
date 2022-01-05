import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:search_product/review.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool isButtonPressed = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xffebeaf1),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const ImageIcon(
                        AssetImage('assets/left.png'),
                        size: 40,
                      ),
                      Text('Search Product',
                          style: GoogleFonts.lato(
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                          )),
                      SizedBox(
                        height: 35,
                        width: 60,
                        child: Image.asset('assets/account.png'),
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(left: 20, right: 15),
                      width: 300,
                      height: 50,
                      child: TextField(
                        decoration: InputDecoration(
                          focusColor: Colors.white,
                          hoverColor: Colors.grey.shade100,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          hintText: 'Search...',
                          prefixIcon: const Icon(Icons.search),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 58,
                      width: 55,
                      child: Card(
                        child: ImageIcon(
                          AssetImage('assets/sort.png'),
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  margin: const EdgeInsets.only(top: 25),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 80,
                            width: 180,
                            margin: const EdgeInsets.only(left: 10),
                            child: Text(
                              "Found\n10 Results",
                              style: GoogleFonts.lato(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),

                          ///First Card
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const Review(),
                                  ));
                            },
                            child: SizedBox(
                              height: 280,
                              width: 180,
                              child: Card(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      margin: const EdgeInsets.all(3),
                                      height: 180,
                                      width: 155,
                                      child: Image.asset(
                                        'assets/2.jpg',
                                      ),
                                    ),
                                    Container(
                                      margin: const EdgeInsets.only(
                                        left: 10,
                                      ),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text('Micro Cleansers',
                                              style: GoogleFonts.lato(
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold,
                                              )),
                                          Text(
                                            'Exfoliating Cleanser',
                                            style: GoogleFonts.lato(
                                                color: Colors.grey,
                                                fontSize: 15),
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Container(
                                                margin: const EdgeInsets.only(
                                                    top: 10),
                                                child: Text('\$9.99',
                                                    style: GoogleFonts.lato(
                                                      fontSize: 25,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    )),
                                              ),
                                              Container(
                                                height: 40,
                                                margin: const EdgeInsets.only(
                                                    right: 15, top: 5),
                                                child: GestureDetector(
                                                  child: Icon(
                                                      Icons.favorite_outlined,
                                                      size: 40,
                                                      color: isButtonPressed
                                                          ? Colors.black
                                                          : Colors.red),
                                                  onTap: () {
                                                    setState(() {
                                                      isButtonPressed =
                                                          !isButtonPressed;
                                                    });
                                                  },
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),

                          ///Second Card
                          SizedBox(
                            height: 280,
                            width: 180,
                            child: Card(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    height: 180,
                                    width: 145,
                                    child: Image.asset(
                                      'assets/1.png',
                                    ),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.only(
                                      left: 10,
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text('Micro Cleansers',
                                            style: GoogleFonts.lato(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold,
                                            )),
                                        Text(
                                          'Exfoliating Cleanser',
                                          style: GoogleFonts.lato(
                                              color: Colors.grey, fontSize: 15),
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Container(
                                              margin: const EdgeInsets.only(
                                                  top: 10),
                                              child: Text('\$9.99',
                                                  style: GoogleFonts.lato(
                                                    fontSize: 25,
                                                    fontWeight: FontWeight.bold,
                                                  )),
                                            ),
                                            Container(
                                              height: 40,
                                              margin: const EdgeInsets.only(
                                                  right: 15, top: 5),
                                              child: GestureDetector(
                                                child: Icon(
                                                    Icons.favorite_outlined,
                                                    size: 40,
                                                    color: isButtonPressed
                                                        ? Colors.black
                                                        : Colors.red),
                                                onTap: () {
                                                  setState(() {
                                                    isButtonPressed =
                                                        !isButtonPressed;
                                                  });
                                                },
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),

                          ///Third Card
                          SizedBox(
                            height: 280,
                            width: 180,
                            child: Card(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    margin: const EdgeInsets.all(4),
                                    height: 180,
                                    width: 145,
                                    child: Image.asset(
                                      'assets/2.jpg',
                                    ),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.only(
                                      left: 10,
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text('Micro Cleansers',
                                            style: GoogleFonts.lato(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold,
                                            )),
                                        const Text(
                                          'Exfoliating Cleanser',
                                          style: TextStyle(
                                              color: Colors.grey, fontSize: 15),
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Container(
                                              margin: const EdgeInsets.only(
                                                  top: 10),
                                              child: Text('\$9.99',
                                                  style: GoogleFonts.lato(
                                                    fontSize: 25,
                                                    fontWeight: FontWeight.bold,
                                                  )),
                                            ),
                                            Container(
                                              height: 40,
                                              margin: const EdgeInsets.only(
                                                  right: 15, top: 5),
                                              child: GestureDetector(
                                                child: Icon(
                                                    Icons.favorite_outlined,
                                                    size: 40,
                                                    color: isButtonPressed
                                                        ? Colors.black
                                                        : Colors.red),
                                                onTap: () {
                                                  setState(() {
                                                    isButtonPressed =
                                                        !isButtonPressed;
                                                  });
                                                },
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),

                      ///Second Column
                      Column(
                        children: [
                          ///Fourth Card
                          SizedBox(
                            height: 280,
                            width: 180,
                            child: Card(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    height: 180,
                                    width: 145,
                                    child: Image.asset(
                                      'assets/1.png',
                                    ),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.only(
                                      left: 10,
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text('Micro Cleansers',
                                            style: GoogleFonts.lato(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold,
                                            )),
                                        Text(
                                          'Exfoliating Cleanser',
                                          style: GoogleFonts.lato(
                                              color: Colors.grey, fontSize: 15),
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Container(
                                              margin: const EdgeInsets.only(
                                                  top: 10),
                                              child: Text('\$9.99',
                                                  style: GoogleFonts.lato(
                                                    fontSize: 25,
                                                    fontWeight: FontWeight.bold,
                                                  )),
                                            ),
                                            Container(
                                              height: 40,
                                              margin: const EdgeInsets.only(
                                                  right: 15, top: 5),
                                              child: GestureDetector(
                                                child: Icon(
                                                    Icons.favorite_outlined,
                                                    size: 40,
                                                    color: isButtonPressed
                                                        ? Colors.black
                                                        : Colors.red),
                                                onTap: () {
                                                  setState(() {
                                                    isButtonPressed =
                                                        !isButtonPressed;
                                                  });
                                                },
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),

                          ///Fifth Card
                          SizedBox(
                            height: 280,
                            width: 180,
                            child: Card(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    margin: const EdgeInsets.all(4),
                                    height: 180,
                                    width: 145,
                                    child: Image.asset(
                                      'assets/2.jpg',
                                    ),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.only(
                                      left: 10,
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text('Micro Cleansers',
                                            style: GoogleFonts.lato(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold,
                                            )),
                                        Text('Exfoliating Cleanser',
                                            style: GoogleFonts.lato(
                                                color: Colors.grey,
                                                fontSize: 15)),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Container(
                                              margin: const EdgeInsets.only(
                                                  top: 10),
                                              child: Text('\$9.99',
                                                  style: GoogleFonts.lato(
                                                    fontSize: 25,
                                                    fontWeight: FontWeight.bold,
                                                  )),
                                            ),
                                            Container(
                                              height: 40,
                                              margin: const EdgeInsets.only(
                                                  right: 15, top: 5),
                                              child: GestureDetector(
                                                child: Icon(
                                                    Icons.favorite_outlined,
                                                    size: 40,
                                                    color: isButtonPressed
                                                        ? Colors.black
                                                        : Colors.red),
                                                onTap: () {
                                                  setState(() {
                                                    isButtonPressed =
                                                        !isButtonPressed;
                                                  });
                                                },
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),

                          ///Sixth Card
                          SizedBox(
                            height: 280,
                            width: 180,
                            child: Card(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    height: 180,
                                    width: 145,
                                    child: Image.asset(
                                      'assets/1.png',
                                    ),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.only(
                                      left: 10,
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text('Micro Cleansers',
                                            style: GoogleFonts.lato(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold,
                                            )),
                                        Text('Exfoliating Cleanser',
                                            style: GoogleFonts.lato(
                                              color: Colors.grey,
                                              fontSize: 15,
                                            )),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Container(
                                              margin: const EdgeInsets.only(
                                                  top: 10),
                                              child: Text('\$9.99',
                                                  style: GoogleFonts.lato(
                                                    fontSize: 25,
                                                    fontWeight: FontWeight.bold,
                                                  )),
                                            ),
                                            Container(
                                              height: 40,
                                              margin: const EdgeInsets.only(
                                                  right: 15, top: 5),
                                              child: GestureDetector(
                                                child: Icon(
                                                    Icons.favorite_outlined,
                                                    size: 40,
                                                    color: isButtonPressed
                                                        ? Colors.black
                                                        : Colors.red),
                                                onTap: () {
                                                  setState(() {
                                                    isButtonPressed =
                                                        !isButtonPressed;
                                                  });
                                                },
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),

                          ///Ending of Card
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
