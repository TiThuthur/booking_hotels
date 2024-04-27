import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:booking_hotels/pages/home_page.dart';
import 'package:booking_hotels/pages/my_appbar.dart';

const d_green = Color(0xff54d3c2);

void main (){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Hotels Booking",
      home: HomePage(),
    );
  }
}




