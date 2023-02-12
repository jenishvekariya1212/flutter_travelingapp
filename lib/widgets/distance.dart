import 'package:flutter/material.dart';

class Distance extends StatelessWidget {
  const Distance({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(
          Icons.location_on_rounded,
          color: Colors.black54,
          size: 14,
        ),
        const Text(
          "india",
          style: TextStyle(
            color: Colors.black54,
          ),
        ),
        const SizedBox(width: 3),
        ...List.generate(
          18,
              (index) {
            return Expanded(
              child: Container(
                height: 2,
                color: index.isOdd ? Colors.transparent : Colors.black54,
              ),
            );
          },
        ),
        const SizedBox(width: 3),
        Icon(
          Icons.location_on_rounded,
          size: 14,
          color: Theme.of(context).primaryColor,
        ),
        const SizedBox(width: 2),
        Text(
          "india",
          style: TextStyle(
            color: Theme.of(context).primaryColor,
          ),
        )
      ],
    );
  }
}