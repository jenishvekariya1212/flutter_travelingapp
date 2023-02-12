import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:travelingapp/model/recomanded_places_model.dart';
import 'package:travelingapp/thirdscreen.dart';

class Recomendedplaces extends StatelessWidget {
  const Recomendedplaces({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 235,
      child: ListView.separated(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return SizedBox(
              width: 220,
              child: Card(
                elevation: 0.4,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(12))),
                child: InkWell(
                  borderRadius: BorderRadius.circular(12),
                  onTap: () {
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: Image.asset(
                            recommendedPlaces[index].image,
                            width: double.maxFinite,
                            fit: BoxFit.cover,
                            height: 150,

                          ),
                        ),
                        const SizedBox(height: 5),
                        Row(
                          children: const [
                            Text(
                              'taj mahal',
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold),
                            ),
                            Spacer(),
                            Icon(
                              Icons.star,
                              color: Colors.yellow,
                            ),
                            Text('4.7', style: TextStyle(fontSize: 12)),
                          ],
                        ),
                        SizedBox(height: 4),
                        Row(
                          children: [
                            Icon(
                              Icons.location_on_rounded,
                              color: Theme.of(context).primaryColorDark,
                              size: 16,
                            ),
                            const SizedBox(width: 5),
                            const Text('delhi,india',
                            style: TextStyle(fontSize: 13),),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
          separatorBuilder: (context, index) =>
              const Padding(padding: EdgeInsets.only(right: 10)),
          itemCount: recommendedPlaces.length),
    );
  }
}
