import 'package:flutter/material.dart';

import 'package:booking_hotels/pages/my_appbar.dart';
import 'package:booking_hotels/pages/widgets/search_section.dart';
import 'package:booking_hotels/pages/widgets/hotel_section.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SearchSection(),
            HotelSection(),
          ],
        ),
      ),
    );
  }
}