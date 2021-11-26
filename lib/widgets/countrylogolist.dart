import 'package:botteld_clone_flutter/Models/c_logoand_name.dart';
import 'package:flag/flag.dart';
import 'package:flutter/material.dart';

class CountryLogoList extends StatelessWidget {
  const CountryLogoList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<CountryLogoAndName> lists = [
      CountryLogoAndName(c_name: 'Poland', f_name: 'PL'),
      CountryLogoAndName(c_name: 'Qatar', f_name: 'QA'),
      CountryLogoAndName(c_name: 'Puerto Rico', f_name: 'IN'),
      CountryLogoAndName(c_name: 'Reunion', f_name: 'AD'),
      CountryLogoAndName(c_name: 'Romania', f_name: 'RO'),
      CountryLogoAndName(c_name: 'Poland', f_name: 'PL'),
      CountryLogoAndName(c_name: 'Qatar', f_name: 'QA'),
      CountryLogoAndName(c_name: 'Puerto Rico', f_name: 'IN'),
      CountryLogoAndName(c_name: 'Reunion', f_name: 'AD'),
      CountryLogoAndName(c_name: 'Romania', f_name: 'RO'),
      CountryLogoAndName(c_name: 'Poland', f_name: 'PL'),
      CountryLogoAndName(c_name: 'Qatar', f_name: 'QA'),
      CountryLogoAndName(c_name: 'Puerto Rico', f_name: 'IN'),
      CountryLogoAndName(c_name: 'Reunion', f_name: 'AD'),
      CountryLogoAndName(c_name: 'Romania', f_name: 'RO'),
      CountryLogoAndName(c_name: 'Poland', f_name: 'PL'),
      CountryLogoAndName(c_name: 'Qatar', f_name: 'QA'),
      CountryLogoAndName(c_name: 'Puerto Rico', f_name: 'IN'),
      CountryLogoAndName(c_name: 'Reunion', f_name: 'AD'),
      CountryLogoAndName(c_name: 'Romania', f_name: 'RO'),
      CountryLogoAndName(c_name: 'Poland', f_name: 'PL'),
      CountryLogoAndName(c_name: 'Qatar', f_name: 'QA'),
      CountryLogoAndName(c_name: 'Puerto Rico', f_name: 'IN'),
      CountryLogoAndName(c_name: 'Reunion', f_name: 'AD'),
      CountryLogoAndName(c_name: 'Romania', f_name: 'RO'),
      CountryLogoAndName(c_name: 'Poland', f_name: 'PL'),
      CountryLogoAndName(c_name: 'Qatar', f_name: 'QA'),
      CountryLogoAndName(c_name: 'Puerto Rico', f_name: 'IN'),
      CountryLogoAndName(c_name: 'Reunion', f_name: 'AD'),
      CountryLogoAndName(c_name: 'Romania', f_name: 'RO'),
    ];
    return GridView.builder(
      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
      itemBuilder: (context, index) {
        return SubClass(
          lists[index].c_name,
          lists[index].f_name,
        );
      },
      itemCount: lists.length,
      shrinkWrap: true,
      scrollDirection: Axis.vertical,
      physics: NeverScrollableScrollPhysics(),
    );
  }
}

class SubClass extends StatelessWidget {
  String c_name;
  String f_name;
  SubClass(this.c_name, this.f_name);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        decoration: const BoxDecoration(
            color: Colors.black12,
            borderRadius: BorderRadius.all(Radius.circular(10))),
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Flag.fromString(
            f_name,
            height: 20,
            width: 30,
          ),
        ),
      ),
    );
  }
}
