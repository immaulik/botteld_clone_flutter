import 'package:flag/flag.dart';
import 'package:flutter/material.dart';

class SendBottleList extends StatelessWidget {
  String countryName;
  DateTime bottleTime;
  String sortname;

  SendBottleList(
      {required this.countryName,
      required this.bottleTime,
      required this.sortname});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Navigator.push(context, MaterialPageRoute(builder: (context) {
        //   return ChatDetailPage(
        //     name: widget.name,
        //     imageUrl: widget.imageUrl,
        //   );
        // }));
      },
      child: Container(
        padding:
            const EdgeInsets.only(left: 16, right: 16, top: 10, bottom: 10),
        child: Row(
          children: <Widget>[
            Expanded(
              child: Row(
                children: <Widget>[
                  Container(
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: Flag.fromString(
                      sortname,
                      height: 30,
                      width: 50,
                      fit: BoxFit.fill,
                    ),
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                  Expanded(
                    child: Container(
                      color: Colors.transparent,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            countryName,
                            style: const TextStyle(fontSize: 16),
                          ),
                          const SizedBox(
                            height: 6,
                          ),
                          Text(
                            dateDiffrence(bottleTime),
                            style: TextStyle(
                                fontSize: 13,
                                color: Colors.grey.shade600,
                                fontWeight: FontWeight.normal),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  String dateDiffrence(DateTime date) {
    DateTime b = DateTime.now();
    String dateString = 'DateTime';
    int totalDays = b.difference(date).inDays;
    int years = totalDays ~/ 365;
    int months = (totalDays - years * 365) ~/ 30;
    int days = totalDays - years * 365 - months * 30;
    int hour = b.difference(date).inHours;
    int second = b.difference(date).inSeconds;
    // print("$years $months $days $totalDays");
    if (years > 0) {
      dateString = 'Arrived in a $years years';
    } else if (months > 0) {
      dateString = 'Arrived in a $months months';
    } else if (days > 0) {
      dateString = 'Arrived in a $days days';
    } else if (hour > 0) {
      dateString = 'Arrived in a $hour hours';
    } else if (second > 0) {
      dateString = 'Arrived in a $second seconds';
    }
    return dateString;
  }
}
