// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widget/category_items.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> items = [
    "All",
    "Nearby",
    "Popular",
    "Best Deals",
  ];
  int current = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(153, 212, 197, 197),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: 13.0,
              ),

              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 20.0,
                  ),
                  Image(
                    image: AssetImage("assets/icons/sort.png"),
                    width: 35.0,
                    height: 35.0,
                  ),
                  SizedBox(
                    width: 270.0,
                  ),
                  Container(
                    height: 60.0,
                    width: 60.0,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.black12,
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: AssetImage("assets/icons/umar.JPG"),
                        ),
                      ),
                    ),
                  )
                ],
              ),

              SizedBox(height: 10.0),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Hello Umar!",
                  style: GoogleFonts.acme(
                    fontSize: 30.0,
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Explore and Find",
                  style: GoogleFonts.acme(
                    fontSize: 40.0,
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Your Favourite Place in the World",
                  style: GoogleFonts.acme(
                    fontSize: 27.0,
                  ),
                ),
              ),

              SizedBox(
                height: 10.0,
              ),

              Padding(
                padding: const EdgeInsets.only(left: 14.0, right: 30.0),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    hintText: 'Search',
                    suffixIcon: Icon(Icons.search),
                  ),
                ),
              ),

              // custom tab bar

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  width: double.infinity,
                  height: 60.0,
                  child: ListView.builder(
                    physics: BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    itemCount: items.length,
                    itemBuilder: (ctx, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              current = index;
                            });
                          },
                          child: AnimatedContainer(
                            width: 100.0,
                            height: 60.0,
                            decoration: BoxDecoration(
                              color: current == index
                                  ? Color.fromARGB(153, 72, 69, 69)
                                  : Colors.white12,
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            duration: Duration(milliseconds: 400),
                            child: Center(
                              child: Text(
                                items[index],
                                style: GoogleFonts.acme(
                                  fontSize: 20.0,
                                  fontStyle: FontStyle.italic,
                                ),
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),

              SizedBox(
                height: 10.0,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  SizedBox(
                    width: 15.0,
                  ),
                  Text(
                    "Category",
                    style: GoogleFonts.acme(
                      fontSize: 20.0,
                    ),
                  ),
                  Spacer(),
                  Text(
                    "Show All",
                    style: GoogleFonts.acme(
                      color: Colors.black54,
                      fontSize: 15.0,
                    ),
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  width: double.infinity,
                  height: 220.0,
                  child: ListView.builder(
                    physics: BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    itemCount: items.length,
                    itemBuilder: (ctx, index) {
                      return Category_items(
                        index: index,
                      );
                    },
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
