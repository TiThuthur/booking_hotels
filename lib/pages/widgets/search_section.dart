import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:booking_hotels/main.dart';
import 'package:booking_hotels/pages/widgets/calendar_page.dart';

class SearchSection extends StatelessWidget {
  const SearchSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[200],
      padding: const EdgeInsets.fromLTRB(10, 25, 10, 10),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(child: Container(
                padding: const EdgeInsets.only(left: 5),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade300,
                      blurRadius: 4,
                      offset: const Offset(0,3),
                    ),
                  ],
                ),
                child: const TextField(
                  decoration: InputDecoration(
                    hintText: "London",
                    contentPadding: EdgeInsets.all(10),
                    border: InputBorder.none
                  ),
                ),
              ),
              ),
              const SizedBox(width: 10,),
              Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade300,
                      blurRadius: 4,
                      offset: const Offset(0,4),
                    ),
                  ],
                  borderRadius: const BorderRadius.all(
                    Radius.circular(25)
                  ),
                ),
                child: ElevatedButton(
                  onPressed: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context){
                          return CalendarPage();
                        },
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.all(10),
                    backgroundColor: d_green,
                    shape: const CircleBorder(),
                    shadowColor: Colors.white,
                  ),
                  child: const Icon(
                    Icons.search,
                    color: Colors.white,
                    size: 26,
                  ),
                ),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                        "Choose date",
                    style: GoogleFonts.nunito(
                      color:Colors.grey,
                      fontSize:15,
                    ),
                    ),
                    SizedBox(height: 8,),
                    Text("12 Dec - 22 Dec",
                      style: GoogleFonts.nunito(
                      color:Colors.black,
                      fontSize:17,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Number of Rooms",
                  style: GoogleFonts.nunito(
                    color:Colors.grey,
                    fontSize:15,
                      ),
                    ),
                    SizedBox(height: 8,),
                    Text("1 Room - 2 Adults",
                        style: GoogleFonts.nunito(
                          color:Colors.black,
                          fontSize:17,
                      )
                    )
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
