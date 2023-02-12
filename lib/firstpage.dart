import 'package:flutter/material.dart';
import 'package:travelingapp/secondpage.dart';

class firstpage extends StatelessWidget {
  const firstpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
        children: [
          const Spacer(),
              Image.asset('assets/images/illustration.png'),
              const SizedBox(height: 40),
              const Text(
                'explore your journey\n with us',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w800,
                ),
              ),
              const SizedBox(height: 20),
              Text(
                'All your vacation destination are\n here enjoy your holiday',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black54,
                  fontSize: 18,
                ),
              ),
              const Spacer(),
              Padding(
                padding: const EdgeInsets.only(bottom: 40),
                child: SizedBox(
                  width: double.maxFinite,
                  child: ElevatedButton(onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return second();
                    },));
                  },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green,
                      elevation: 10,
                        shape: const StadiumBorder(),
                    padding: const EdgeInsets.symmetric(
                        vertical: 15,
                        horizontal: 8.0,
                    )),
                    child: const Text('Get Started',style: TextStyle(fontSize: 15,
                      fontWeight: FontWeight.w500,
                    ),
                    ),

                  ),
                ),
              )
        ],
      ),
            ),
          )),
    );
  }
}
