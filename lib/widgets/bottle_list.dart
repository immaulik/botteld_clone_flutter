import 'package:botteld_clone_flutter/Models/sendbottle.dart';
import 'package:botteld_clone_flutter/widgets/sendbottlelist.dart';
import 'package:flutter/material.dart';

class BottleList extends StatefulWidget {
  const BottleList({Key? key}) : super(key: key);

  @override
  _BottleListState createState() => _BottleListState();
}

class _BottleListState extends State<BottleList> {
  List<SendBottle> sendBottles = [
    SendBottle(
        countryName: 'Poland', sortName: 'PL', bottleTime: DateTime.parse("2018-08-16T11:00:00.000Z") ),
    SendBottle(
        countryName: 'Qatar', sortName: 'QA', bottleTime: DateTime.parse("2021-10-16T11:00:00.000Z")),
    SendBottle( 
        countryName: 'Puerto Rico', sortName: 'IN', bottleTime: DateTime.parse("2020-02-16T11:00:00.000Z")),
    SendBottle(
        countryName: 'Reunion', sortName: 'AD', bottleTime: DateTime.parse("2021-08-16T11:00:00.000Z")),
    SendBottle(
        countryName: 'Romania', sortName: 'RO', bottleTime: DateTime.parse("2020-04-16T11:00:00.000Z")),
  ];
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return ListView.builder(
      itemBuilder: (context, index) {
        return SendBottleList(
          countryName: sendBottles[index].countryName,
          sortname: sendBottles[index].sortName,
          bottleTime: sendBottles[index].bottleTime,
        );
      },
      itemCount: 5,
      shrinkWrap: true,
      padding: const EdgeInsets.only(top: 16),
      physics: const NeverScrollableScrollPhysics(),
    );
  }
}
