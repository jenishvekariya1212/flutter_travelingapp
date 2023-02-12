import 'package:flutter/material.dart';

class location extends StatelessWidget {
  const location({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0.4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Row(
          children: [
            Image.asset('assets/images/map.png',
            width: 100,),
            const SizedBox(width: 10),
            Column(crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('your location',
                style: Theme.of(context).textTheme.headline6!.copyWith(
                  color: Theme.of(context).primaryColorDark,
                ),),
                const SizedBox(height: 10),
                Text('india,gujarat',style: Theme.of(context).textTheme.labelLarge),
              ],
            )
          ],
        ),
      ),
    );
  }
}
