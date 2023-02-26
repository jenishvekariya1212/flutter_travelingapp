import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:travelingapp/secondpage.dart';
import 'package:http/http.dart' as http;
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
      body: FutureBuilder<List<dynamic>>(
          builder: (context, snapshot) {
            if (snapshot != null && snapshot.hasData) {
              return ListView.builder(itemBuilder: (context, index) {
                return  Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image.network(
                        snapshot.data![index]['image'].toString(),
                        fit: BoxFit.cover,
                        height: 400,
                      ),
                    ),
                    Row(
                      children:  [
                        Text(snapshot.data![index]['name'].toString(),
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
                         Text(
                          snapshot.data![index]['pname'].toString(),
                          style: TextStyle(fontSize: 19),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    Text(
                        snapshot.data![index]['aboutplace'].toString(),
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
                );
              },
                itemCount: snapshot.data!.length,);
            } else {
              return Center(child: CircularProgressIndicator());
            }
          },
          future: calldemoApi()),

    );
  }
}
Future<List<dynamic>> calldemoApi() async {
  http.Response res = await http
      .get(Uri.parse("https://6346644e9eb7f8c0f87a604b.mockapi.io/newapi"));
  print("data::${res.body.toString()}");
  List<dynamic> map=jsonDecode(res.body.toString());
  return map;
}

