import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:search_product/main.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:search_product/final page.dart';

class Review extends StatefulWidget {
  const Review({Key? key}) : super(key: key);

  @override
  _ReviewState createState() => _ReviewState();
}

class _ReviewState extends State<Review> {
  int _itemCount = 0;

  void add() {
    setState(() {
      _itemCount++;
    });
  }

  void minus() {
    setState(() {
      if (_itemCount != 0) {
        _itemCount--;
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffebeaf1),
      body: SafeArea(
          child: Column(
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
                const ImageIcon(
                  AssetImage('assets/menu.png'),
                  size: 30,
                ),
              ],
            ),
          ),
          CarouselSlider(
            items: [
              SizedBox(
                width: 800,
                child: Image.asset('assets/detail.jpg'),
              ),
              SizedBox(
                width: 600,
                child: Image.asset('assets/deta.jpg'),
              ),
              SizedBox(
                width: 600,
                child: Image.asset('assets/det.jpg'),
              ),
            ],
            options: CarouselOptions(
              height: 400,
              enlargeCenterPage: true,
              autoPlay: true,
              autoPlayCurve: Curves.fastOutSlowIn,
              enableInfiniteScroll: true,
              autoPlayAnimationDuration: const Duration(milliseconds: 800),
              viewportFraction: 0.8,
            ),
          ),
          Row(
            children: [
              Container(
                margin: const EdgeInsets.all(10),
                height: 110,
                width: 110,
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(35),
                  ),
                  child: Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(top: 15, bottom: 13),
                        height: 50,
                        width: 70,
                        child: Image.asset('assets/vegan.png'),
                      ),
                      Text(
                        'Vegan',
                        style: GoogleFonts.lato(
                          color: Colors.grey,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.all(10),
                height: 110,
                width: 110,
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(35),
                  ),
                  child: Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(top: 15, bottom: 15),
                        height: 50,
                        width: 70,
                        child: Image.asset('assets/seeding.png'),
                      ),
                      Text(
                        'Natural',
                        style: GoogleFonts.lato(
                          color: Colors.grey,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.all(10),
                height: 110,
                width: 110,
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(35),
                  ),
                  child: Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(top: 15, bottom: 5),
                        height: 50,
                        width: 70,
                        child: Image.asset('assets/world.png'),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 10),
                        child: Text(
                          'C+ Neutral',
                          style: GoogleFonts.lato(
                            color: Colors.grey,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 215,
            width: 395,
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)),
              child: Container(
                margin: const EdgeInsets.only(top: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(left: 15),
                          child: Text(
                            'Face Cleanser',
                            style: GoogleFonts.lato(
                                fontWeight: FontWeight.bold, fontSize: 25),
                          ),
                        ),
                        Container(
                          height: 20,
                          margin: const EdgeInsets.only(right: 20),
                          child: Row(
                            children: [
                              Image.asset(
                              'assets/star.png'),
                          Image.asset(
                              'assets/star.png'),
                          Image.asset(
                              'assets/star.png'),
                          Image.asset(
                              'assets/star.png'),
                          Image.asset(
                              'assets/sstar.png'),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(left: 15),
                          child: Text('Size: 760ft oz 250/ml',
                            style: GoogleFonts.lato(
                              color: Colors.grey,
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(right: 25),
                          child: Text('(132 Reviews)',
                          style: GoogleFonts.lato(
                            color: Colors.grey
                          ),),
                        )
                      ],
                    ),
                   Container(
                     margin:const EdgeInsets.only(top: 20),
                     height: 100,
                     child:  Row(
                       children: [
                         Container(
                           margin: const EdgeInsets.only(left: 15),
                           child: Text('\$9.99',
                             style: GoogleFonts.lato(
                               fontSize: 40,
                               fontWeight: FontWeight.bold,
                             ),
                           ),
                         ),
                         Container(
                           margin: const EdgeInsets.only(left: 45),
                           height: 47,
                           width: 115,
                           child: Card(
                             shape: RoundedRectangleBorder(
                               borderRadius: BorderRadius.circular(20),
                             ),
                             child: Row(
                               mainAxisAlignment: MainAxisAlignment.spaceBetween,
                               children: [
                                 if (_itemCount!=0) IconButton(icon: const Icon(Icons.remove),
                                   onPressed: ()=>setState(()=>_itemCount--),) else Container(),
                                 Text(_itemCount.toString()),
                                 IconButton(icon: const Icon(Icons.add),onPressed: ()=>setState(()=>_itemCount++)),
                               ],
                             )
                           ),
                         ),
                         Container(
                           margin: const EdgeInsets.only(left:10),
                           height: 60,
                           width: 90,
                           child: ElevatedButton(
                             onPressed: (){
                               Navigator.push(
                                   context,
                                   MaterialPageRoute(
                                     builder: (context) => const Finalpage(),
                                   ));
                             },
                             style: ElevatedButton.styleFrom(
                               primary: Colors.black,
                               shape: RoundedRectangleBorder(
                                 borderRadius: BorderRadius.circular(20),

                               )
                             ),
                             child:  Text('Cart',
                             style: GoogleFonts.lato(
                               fontSize: 20
                             ),),
                           ),
                         )
                       ],
                     ),
                   )
                  ],
                ),
              ),
            ),
          )
        ],
      )),
    );
  }
}
