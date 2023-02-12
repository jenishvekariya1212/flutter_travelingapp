import 'package:flutter/material.dart';
import 'package:travelingapp/model/tourist_places-model.dart';

class touristplaces extends StatelessWidget {
  const touristplaces({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: ListView.separated(
        physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          itemBuilder: (context, index) {
        return Chip(label: Text(touristPlaces[index].name),
        avatar: CircleAvatar(
            backgroundImage: AssetImage(touristPlaces[index].image),
        ),
          backgroundColor: Colors.white,
          elevation: 0.4,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        );

      },
          separatorBuilder: (context, index) =>
              Padding(padding: EdgeInsets.only(right: 10)),
          itemCount: 5),
    );
  }
}
