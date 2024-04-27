import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget{
  Size get preferredSize => new Size.fromHeight(50);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
        icon: Icon(
          Icons.arrow_back,
          color: Colors.grey[800],
          size: 20,
        ),
        onPressed: null,
      ),
      centerTitle: true,
      title: Text("Explore", style: GoogleFonts.nunito(
        color: Colors.black,
        fontSize: 22,
        fontWeight:FontWeight.w800,
      ),
      ),
      actions: [
        IconButton(
          onPressed: null,
          icon: Icon(
            Icons.favorite_outline_rounded,
            color: Colors.grey[800],
            size: 20,
          ),
        )
      ],
      backgroundColor: Colors.white,
    );
  }
}