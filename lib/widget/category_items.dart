// ignore_for_file: prefer_const_constructors, unnecessary_new, non_constant_identifier_names, must_be_immutable, camel_case_types

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Category_items extends StatelessWidget {
  int index = 0;
  Category_items({super.key, required this.index});

  List<String> images = [
    "assets/images/lakes.jpg",
    "assets/images/mountain.jpg",
    "assets/images/beach.jpg",
    "assets/images/villages.jpg",
  ];

  List<String> images_name = [
    "Lake",
    "Mount",
    "Beach",
    "Village",
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 180.0,
        height: 250.0,
        decoration: BoxDecoration(
          color: Color.fromARGB(137, 173, 160, 160),
          borderRadius: BorderRadius.circular(20.0),
          image: DecorationImage(
            fit: BoxFit.cover,
            colorFilter: new ColorFilter.mode(
                Colors.black.withOpacity(0.9), BlendMode.dstATop),
            image: AssetImage(
              //"assets/images/lakes.jpg",
              images[index],
            ),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 70.0, top: 160.0),
          child: Text(
            // "Hello",
            images_name[index],
            style: GoogleFonts.acme(
              fontSize: 25.0,
              fontStyle: FontStyle.italic,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
