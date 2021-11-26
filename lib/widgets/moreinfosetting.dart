import 'package:flutter/material.dart';

class MoreInfoSetting extends StatefulWidget {
  const MoreInfoSetting({Key? key}) : super(key: key);

  @override
  _MoreInfoSettingState createState() => _MoreInfoSettingState();
}

class _MoreInfoSettingState extends State<MoreInfoSetting> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          Container(
            width: double.infinity,
            color: Colors.black12,
            child: const Padding(
              padding: EdgeInsets.only(left: 10),
              child: Text(
                'MORE INFO',
                textAlign: TextAlign.start,
                style: TextStyle(
                    color: Colors.deepPurple,
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          InkWell(
            onTap: () {},
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  const Text(
                    'Tips',
                    style: TextStyle(color: Colors.black),
                  ),
                ],
              ),
            ),
          ),
          const Divider(),
          InkWell(
            onTap: () {},
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  const Text(
                    'Contact us',
                    style: TextStyle(color: Colors.black),
                  ),
                ],
              ),
            ),
          ),
          const Divider(),
          InkWell(
            onTap: () {},
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  const Text(
                    'Terms of use',
                    style: TextStyle(color: Colors.black),
                  ),
                ],
              ),
            ),
          ),
          const Divider(),
          InkWell(
            onTap: () {},
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  const Text(
                    'Privacy policy',
                    style: TextStyle(color: Colors.black),
                  ),
                ],
              ),
            ),
          ),
          const Divider(),
          InkWell(
            onTap: () {},
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  const Text(
                    'Modify password',
                    style: TextStyle(color: Colors.black),
                  ),
                ],
              ),
            ),
          ),
          const Divider(),
          InkWell(
            onTap: () {},
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  const Text(
                    'Delete my account',
                    style: TextStyle(color: Colors.red),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: SizedBox(
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
                    "Logout",
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
