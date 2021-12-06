import 'package:flutter/material.dart';

enum SingingCharacter { male, female, non }

class ChangeGender extends StatefulWidget {
  const ChangeGender({Key? key}) : super(key: key);

  @override
  _ChangeGenderState createState() => _ChangeGenderState();
}

class _ChangeGenderState extends State<ChangeGender> {
  String radioItem = '';
  SingingCharacter? _character = SingingCharacter.male;
  @override
  Widget build(BuildContext context) {
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
                ListTile(
                  title: const Text('Male'),
                  leading: Radio<SingingCharacter>(
                    value: SingingCharacter.male,
                    groupValue: _character,
                    onChanged: (SingingCharacter? value) {
                      setState(() {
                        _character = value;
                      });
                    },
                    activeColor: Colors.green,
                  ),
                ),
                ListTile(
                  title: const Text('Female'),
                  leading: Radio<SingingCharacter>(
                    value: SingingCharacter.female,
                    groupValue: _character,
                    onChanged: (SingingCharacter? value) {
                      setState(() {
                        _character = value;
                      });
                    },
                    activeColor: Colors.green,
                  ),
                ),
                ListTile(
                  title: const Text('Non-binary'),
                  leading: Radio<SingingCharacter>(
                    value: SingingCharacter.non,
                    groupValue: _character,
                    onChanged: (SingingCharacter? value) {
                      setState(() {
                        _character = value;
                      });
                    },
                    activeColor: Colors.green,
                  ),
                ),
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
          const Padding(
            padding: EdgeInsets.all(10.0),
            // ignore: prefer_const_constructors
            child: Text(
              'Make sure not to use it to create a fake profile this would lead to deletion of your account',
              textAlign: TextAlign.center,
              // ignore: prefer_const_constructors
              style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
