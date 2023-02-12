import 'package:flutter/material.dart';
import 'package:travelingapp/secondpage.dart';

class third extends StatelessWidget {
  const third({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightGreen,
        foregroundColor: Colors.black,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('goa'),
            Icon(Icons.bookmark_outline),
          ],
        ),
      ),
      body: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Image.asset(
              'assets/images/goa.jpg',
              fit: BoxFit.cover,
              height: 400,
            ),
          ),
          Row(
            children: const [
              Text(
                'goa',
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
              ),
              Spacer(),
              Icon(
                Icons.star,
                color: Colors.yellow,
              ),
              Text('4.7', style: TextStyle(fontSize: 17)),
            ],
          ),
          SizedBox(height: 4),
          Row(
            children: [
              Icon(
                Icons.location_on_rounded,
                color: Theme.of(context).primaryColorDark,
                size: 30,
              ),
              const SizedBox(width: 5),
              const Text(
                'delhi,india',
                style: TextStyle(fontSize: 19),
              ),
            ],
          ),
          const SizedBox(height: 20),
          Text(
              'One of Indias smallest states, it is bounded by the states of Maharashtra on the north and Karnataka on the east and south and by the Arabian Sea on the west. The capital is Panaji (Panjim), on the north-central coast of the mainland district',
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
          const SizedBox(height: 50),
          Row(
            children: [
              Column(
                children: [
                  Text("\$23",
                      style: TextStyle(
                          fontSize: 25, color: Theme.of(context).primaryColor)),
                  Text('/person'),
                ],
              ),
              SizedBox(width: 110),
              ElevatedButton(
                  style: ButtonStyle(
                      padding: MaterialStatePropertyAll(
                        EdgeInsets.only(
                            left: 70, right: 70, top: 20, bottom: 20),
                      ),
                      shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      )),
                 backgroundColor:MaterialStatePropertyAll(Colors.lightGreen)  ),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return second();
                    },));
                  },
                  child: Text('Book Now'))
            ],
          ),
        ],
      ),
    );
  }
}
