import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:search_product/main.dart';

class Finalpage extends StatefulWidget {
  const Finalpage({Key? key}) : super(key: key);

  @override
  _FinalpageState createState() => _FinalpageState();
}

class _FinalpageState extends State<Finalpage> {
  int _n = 0;

  void add() {
    setState(() {
      _n++;
    });
  }

  void minus() {
    setState(() {
      if (_n != 0) {
        _n--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xffebeaf1),
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
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
                    Text(
                      'Shopping Bag',
                      style: GoogleFonts.lato(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const ImageIcon(
                      AssetImage('assets/shopping-bag.png'),
                      size: 30,
                    ),
                  ],
                ),
              ),
              Container(
                  margin: const EdgeInsets.only(top: 10),
                  height: 100,
                  width: 400,
                  child: Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(left: 20),
                        child: Image.asset(
                          'assets/det.jpg',
                          height: 90,
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 7, left: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Facial Cleanser',
                                  style: GoogleFonts.lato(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 25,
                                  ),
                                ),
                                Container(
                                  margin: const EdgeInsets.only(left: 70),
                                  height: 15,
                                  width: 20,
                                  child: Image.asset('assets/cross.png'),
                                )
                              ],
                            ),
                            Text(
                              'Size: 760ft oz 250/ml',
                              style: GoogleFonts.lato(
                                  color: Colors.grey, fontSize: 14),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Container(
                                  margin: const EdgeInsets.only(top: 10),
                                  child: Text(
                                    '\$9.99',
                                    style: GoogleFonts.lato(
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                Container(
                                  margin:
                                      const EdgeInsets.only(left: 80, top: 10),
                                  child: Row(
                                    children: [
                                      SizedBox(
                                        height: 25,
                                        child: FloatingActionButton(
                                          onPressed: add,
                                          child: const Icon(
                                            Icons.add,
                                            color: Colors.black,
                                          ),
                                          backgroundColor: Colors.white,
                                        ),
                                      ),
                                      Text('$_n',
                                          style:
                                              const TextStyle(fontSize: 15.0)),
                                      SizedBox(
                                          height: 25,
                                          child: FloatingActionButton(
                                            onPressed: minus,
                                            child: const Icon(
                                              Icons.exposure_minus_1,
                                              color: Colors.black,
                                            ),
                                            backgroundColor: Colors.white,
                                          )),
                                    ],
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  )),

              ///Second Product
              Container(
                  margin: const EdgeInsets.only(top: 10),
                  height: 100,
                  width: 400,
                  child: Row(
                    children: [
                      Container(
                          margin: const EdgeInsets.only(left: 20),
                          child: Image.asset('assets/deta.jpg')),
                      Container(
                        margin: const EdgeInsets.only(top: 7),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Facial Cleanser',
                                  style: GoogleFonts.lato(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 25,
                                  ),
                                ),
                                Container(
                                  margin: const EdgeInsets.only(left: 70),
                                  height: 15,
                                  width: 20,
                                  child: Image.asset('assets/cross.png'),
                                )
                              ],
                            ),
                            Text(
                              'Size: 760ft oz 250/ml',
                              style: GoogleFonts.lato(
                                  color: Colors.grey, fontSize: 14),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Container(
                                  margin: const EdgeInsets.only(top: 10),
                                  child: Text(
                                    '\$9.99',
                                    style: GoogleFonts.lato(
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                Container(
                                  margin:
                                      const EdgeInsets.only(left: 80, top: 10),
                                  child: Row(
                                    children: [
                                      SizedBox(
                                        height: 25,
                                        child: FloatingActionButton(
                                          onPressed: add,
                                          child: const Icon(
                                            Icons.add,
                                            color: Colors.black,
                                          ),
                                          backgroundColor: Colors.white,
                                        ),
                                      ),
                                      Text('$_n',
                                          style:
                                              const TextStyle(fontSize: 15.0)),
                                      SizedBox(
                                          height: 25,
                                          child: FloatingActionButton(
                                            onPressed: minus,
                                            child: const Icon(
                                              Icons.exposure_minus_1,
                                              color: Colors.black,
                                            ),
                                            backgroundColor: Colors.white,
                                          )),
                                    ],
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  )),

              ///Third Product
              Container(
                  margin: const EdgeInsets.only(top: 10),
                  height: 100,
                  width: 400,
                  child: Row(
                    children: [
                      Container(
                          margin: const EdgeInsets.only(left: 20),
                          child: Image.asset('assets/deta.jpg')),
                      Container(
                        margin: const EdgeInsets.only(top: 7),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Facial Cleanser',
                                  style: GoogleFonts.lato(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 25,
                                  ),
                                ),
                                Container(
                                  margin: const EdgeInsets.only(left: 70),
                                  height: 15,
                                  width: 20,
                                  child: Image.asset('assets/cross.png'),
                                )
                              ],
                            ),
                            Text(
                              'Size: 760ft oz 250/ml',
                              style: GoogleFonts.lato(
                                  color: Colors.grey, fontSize: 14),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Container(
                                  margin: const EdgeInsets.only(top: 10),
                                  child: Text(
                                    '\$9.99',
                                    style: GoogleFonts.lato(
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                Container(
                                  margin:
                                      const EdgeInsets.only(left: 80, top: 10),
                                  child: Row(
                                    children: [
                                      SizedBox(
                                        height: 25,
                                        child: FloatingActionButton(
                                          onPressed: add,
                                          child: const Icon(
                                            Icons.add,
                                            color: Colors.black,
                                          ),
                                          backgroundColor: Colors.white,
                                        ),
                                      ),
                                      Text('$_n',
                                          style:
                                              const TextStyle(fontSize: 15.0)),
                                      SizedBox(
                                          height: 25,
                                          child: FloatingActionButton(
                                            onPressed: minus,
                                            child: const Icon(
                                              Icons.exposure_minus_1,
                                              color: Colors.black,
                                            ),
                                            backgroundColor: Colors.white,
                                          )),
                                    ],
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  )),
              Container(
                margin: const EdgeInsets.only(top: 20, left: 13),
                width: 360,
                child: TextField(
                  decoration: InputDecoration(
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    hintText: 'Promo Code',
                    suffixIcon: Container(
                      margin: const EdgeInsets.only(top: 7, right: 10, bottom: 7),
                      height: 50,
                      width: 100,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          primary: Colors.black,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        child: Text(
                          'Apply',
                          style: GoogleFonts.lato(
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.all(15),
                child: Row(
                  children: [
                    Text(
                      'Subtotal',
                      style: GoogleFonts.lato(
                          fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 160),
                      child: Text(
                        '\$45.99',
                        style: GoogleFonts.lato(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Text(
                      'USD',
                      style: GoogleFonts.lato(color: Colors.grey, fontSize: 18),
                    )
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 15),
                width: 360,
                child: const Divider(
                  color: Colors.white,
                  thickness: 5,
                ),
              ),
              Container(
                margin: const EdgeInsets.all(15),
                child: Row(
                  children: [
                    Text(
                      'Shipping',
                      style: GoogleFonts.lato(
                          fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 170),
                      child: Text(
                        '\$4.99',
                        style: GoogleFonts.lato(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Text(
                      'USD',
                      style: GoogleFonts.lato(color: Colors.grey, fontSize: 18),
                    )
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 15),
                width: 360,
                child: const Divider(
                  color: Colors.white,
                  thickness: 5,
                ),
              ),
              Container(
                margin: const EdgeInsets.all(15),
                child: Row(
                  children: [
                    Text(
                      'Bag Total',
                      style: GoogleFonts.lato(
                          fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 90,right: 10),
                      child: Text('(4 items)',
                      style: GoogleFonts.lato(
                        fontWeight: FontWeight.bold,
                      ),),
                    ),
                    Text(
                        '\$50.98',
                        style: GoogleFonts.lato(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    Text(
                      'USD',
                      style: GoogleFonts.lato(color: Colors.grey, fontSize: 18),
                    )
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.all(10),
                height: 75,
                width: 380,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    'Proceed To Checkout',
                    style: GoogleFonts.lato(fontSize: 20),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
