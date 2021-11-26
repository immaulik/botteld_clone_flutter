import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileSetting extends StatefulWidget {
  const ProfileSetting({Key? key}) : super(key: key);

  @override
  _ProfileSettingState createState() => _ProfileSettingState();
}

class _ProfileSettingState extends State<ProfileSetting> {
  @override
  Widget build(BuildContext context) {
    String dropdownValue = '18';
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
                'PROFILE',
                textAlign: TextAlign.start,
                style: TextStyle(
                    color: Colors.deepPurple,
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          const SizedBox(
            height: 3,
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
                    'Username',
                    style: TextStyle(color: Colors.black),
                  ),
                  const Text(
                    'maulik',
                    style: TextStyle(color: Colors.grey),
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
                    'Gender',
                    style: TextStyle(color: Colors.black),
                  ),
                  const Text(
                    'Male',
                    style: TextStyle(color: Colors.grey),
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
                    'Profession',
                    style: TextStyle(color: Colors.black),
                  ),
                  const Text(
                    'Treasure hunter',
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
            ),
          ),
          const Divider(),
          Padding(
            padding: const EdgeInsets.all(8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                const Text(
                  'Age',
                  style: TextStyle(color: Colors.black),
                ),
                Container(
                  width: 60,
                  child: DropdownButton(
                    value: dropdownValue,
                    isDense: true,
                    icon: const SizedBox.shrink(),
                    style: const TextStyle(color: Colors.grey),
                    onChanged: (String? newValue) {
                      setState(() {
                        dropdownValue = newValue!;
                      });
                    },
                    items: List<String>.generate(
                        53, (int index) => '${index + 18}').map(
                      (val) {
                        return DropdownMenuItem<String>(
                          value: val,
                          child: Text(
                            val,
                            style: TextStyle(
                                fontFamily: GoogleFonts.poppins().fontFamily),
                          ),
                        );
                      },
                    ).toList(),
                  ),
                )
              ],
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
                    'Language',
                    style: TextStyle(color: Colors.black),
                  ),
                  const Text(
                    'English',
                    style: TextStyle(color: Colors.grey),
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
                    'Centers of interest',
                    style: TextStyle(color: Colors.black),
                  ),
                  const Text(
                    '5 Picks',
                    style: TextStyle(color: Colors.grey),
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
                    'Languages spoken',
                    style: TextStyle(color: Colors.black),
                  ),
                  const Text(
                    '3 picked',
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
