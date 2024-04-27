import 'package:booking_hotels/main.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HotelSection extends StatelessWidget {
  final List hotelList = [
    {
      'title': 'Grand Royl Hotel',
      'place': 'wembley, London',
      'distance': 2,
      'review': 36,
      'picture': 'images/hotel_1.png',
      'price': '180',
    },
    {
      'title': 'Queen Hotel',
      'place': 'wembley, London',
      'distance': 3,
      'review': 13,
      'picture': 'images/hotel_2.png',
      'price': '220',
    },
    {
      'title': 'Grand Mal Hotel',
      'place': 'wembley, London',
      'distance': 6,
      'review': 88,
      'picture': 'images/hotel_3.png',
      'price': '400',
    },
    {
      'title': 'Hilton',
      'place': 'wembley, London',
      'distance': 11,
      'review': 34,
      'picture': 'images/hotel_4.png',
      'price': '910',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      color: Colors.white,
      child: Column(
        children: [
          Container(
            height: 50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "550 hotels founds",
                style: GoogleFonts.nunito(
                  color:Colors.black,
                  fontSize:15,
                ),
                ),
                Row(
                  children: [
                    Text("Filters",
                    style: GoogleFonts.nunito(
                      color:Colors.black,
                      fontSize:15,
                    ),//nunito
                    ),
                    IconButton(
                        onPressed: null,
                        icon: Icon(Icons.filter_list_outlined,
                        color: d_green,
                        size: 25,)
                    ),
                  ],
                )
              ],
            ),
          ),
          Column(
            children: hotelList.map((hotel){
              return HotelCard(hotel);
            } ).toList(),
          )
        ],
      ),
    );
  }
}
