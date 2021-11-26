// ignore_for_file: sized_box_for_whitespace

import 'package:botteld_clone_flutter/widgets/bottle_list.dart';

import '../widgets/countrylogolist.dart';
import 'package:flutter/material.dart';

class VisitedCountryScreen extends StatelessWidget {
  const VisitedCountryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Center(
            child: SafeArea(
              child: Column(
                // crossAxisAlignment: CrossAxisAlignment.center,
                // mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      height: size.height * 0.2,
                      child: Column(
                        // crossAxisAlignment: CrossAxisAlignment.center,
                        // mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            '1 bottles at sea',
                            style: TextStyle(
                                fontSize: 25,
                                color: Colors.red[400],
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          const CircleAvatar(
                            radius: 30,
                            backgroundImage: const NetworkImage(
                                'https://media.istockphoto.com/photos/message-inside-of-a-bottle-floating-in-the-water-picture-id180849182?b=1&k=20&m=180849182&s=170667a&w=0&h=5ImSOUN-tPXyyzEpUMDoNHZ7UymdP2iXcoxqD_qBuyI='),
                          ),
                        ],
                      ),
                    ),
                  ),
                  // BottleList(),
                  CountryLogoList()
                ],
              ),
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).pop();
        },
        child: const Icon(Icons.close),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
