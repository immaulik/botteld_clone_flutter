import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ChangeProfession extends StatefulWidget {
  const ChangeProfession({Key? key}) : super(key: key);

  @override
  _ChangeProfessionState createState() => _ChangeProfessionState();
}

class _ChangeProfessionState extends State<ChangeProfession> {
  int value = 0;
  Widget CustomRadioButton(
      String text, int index, Size size, String imgUrl, String extraText) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10, top: 5, bottom: 5),
      child: RaisedButton(
        onPressed: () {
          setState(() {
            value = index;
          });
        },
        child: Container(
          height: size.height * 0.22,
          width: size.width * 0.9,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.network(
                  imgUrl,
                  height: size.height * 0.08,
                  width: size.height * 0.3,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  text,
                  style: TextStyle(
                    fontFamily: GoogleFonts.kalam().fontFamily,
                    fontWeight: FontWeight.bold,
                    color: (value == index) ? Colors.white : Colors.black,
                  ),
                ),
                Container(
                  width: size.width * 0.9,
                  child: Text(
                    extraText,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 13,
                      color: (value == index) ? Colors.white70 : Colors.black87,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        color: (value == index) ? Colors.green : Colors.white,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'What is Your gender?',
          style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: IconButton(
          onPressed: () => Navigator.of(context).pop(true),
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
        actions: [
          IconButton(
              onPressed: () => Navigator.of(context).pop(true),
              icon: const Icon(
                Icons.check,
                color: Colors.black,
              ))
        ],
      ),
      extendBodyBehindAppBar: true,
      body: Column(
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          // ignore: avoid_unnecessary_containers
          SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CustomRadioButton(
                    "Sailor",
                    1,
                    size,
                    'https://cpng.pikpng.com/pngl/s/75-758657_sailor-cap-png-sailor-hat-clipart-png-transparent.png',
                    'Here to make friends, discover new cultures, learn and share.'),
                CustomRadioButton(
                    "Treasure hunter",
                    2,
                    size,
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRNlSMGlT78p4tIDskq6rfqvdFM8d9XqHwOBQ&usqp=CAU',
                    'Rooming the oceans searching for the rare gem, your special someone.'),
                CustomRadioButton(
                    "Pirate",
                    3,
                    size,
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQvm1BLt3-u40oB0qnT34zaHBb0ptmye8OGKg&usqp=CAU',
                    'Just chilling, not really knowing what you are looking for but always with good intention.')
              ],
            ),
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: SizedBox(
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                // ignore: deprecated_member_use
                child: RaisedButton(
                  onPressed: () {},
                  color: Colors.green,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  // ignore: prefer_const_constructors
                  child: Text(
                    "Save",
                    // ignore: prefer_const_constructors
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
