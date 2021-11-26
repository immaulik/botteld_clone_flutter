import 'package:flutter/material.dart';

class ChangeUsername extends StatefulWidget {
  const ChangeUsername({Key? key}) : super(key: key);

  @override
  _ChangeUsernameState createState() => _ChangeUsernameState();
}

class _ChangeUsernameState extends State<ChangeUsername> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Your Bios',
          style: TextStyle(color: Colors.black),
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
          // ignore: prefer_const_constructors
          SafeArea(
            // ignore: prefer_const_constructors
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              // ignore: prefer_const_constructors
              child: Text(
                'What are your dream,your passions?,you are unique, let the world know!',
                textAlign: TextAlign.center,
                // ignore: prefer_const_constructors
                style: TextStyle(color: Colors.black),
              ),
            ),
          ),
          // ignore: avoid_unnecessary_containers
          Container(
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: TextField(
                textInputAction: TextInputAction.newline,
                keyboardType: TextInputType.multiline,
                maxLines: 5,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Write your bio....',
                ),
              ),
            ),
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
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
                    "Submit",
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
