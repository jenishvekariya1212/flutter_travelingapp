import 'package:flutter/material.dart';
import 'package:travelingapp/thirdscreen.dart';
import 'package:travelingapp/widgets/custom_icon_button.dart';
import 'package:travelingapp/widgets/location_cart.dart';
import 'package:travelingapp/widgets/nearby_places.dart';
import 'package:travelingapp/widgets/recommanded_places.dart';
import 'package:travelingapp/widgets/tourist_places.dart';

class second extends StatelessWidget {
  const second({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('good morning'),
            Text('fjfs smdm dkk',
                style: Theme.of(context).textTheme.labelMedium),
          ],
        ),
        actions: [
          const customizedbutton(
            icon: Icon(Icons.search_outlined),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0, right: 12),
            child: customizedbutton(
              icon: Icon(Icons.notifications_outlined),
            ),
          ),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(15),
        children: [
          //location card
          location(),
          const SizedBox(height: 15),
          touristplaces(),
          //categories
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text (
                "recommendation",
                style: Theme.of(context).textTheme.headline6,
              ),
              TextButton(onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return third();
                },));
              }, child: const Text('view all'))
            ],
          ),

          //reccomandation
          const SizedBox(height: 10),
          const Recomendedplaces(),
          const SizedBox(height: 10),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Nearby From You",
                style: Theme.of(context).textTheme.headline6,
              ),
              TextButton(onPressed: () {}, child: const Text('view all'))
            ],
          ),

          const SizedBox(height: 10),
          const NearbyPlaces(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          showSelectedLabels: true,
          showUnselectedLabels: false,
          items: const[
            BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined,), label: 'Home',),
            BottomNavigationBarItem(
                icon: Icon(Icons.bookmark_outline), label: 'bookmark',),
            BottomNavigationBarItem(
                icon: Icon(Icons.airplane_ticket_outlined), label: 'Ticket'),
            BottomNavigationBarItem(
                icon: Icon(Icons.person_outline), label: 'pofile'),
          ]),
    );
  }
}
