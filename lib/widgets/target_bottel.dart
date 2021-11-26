import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TargetBottel extends StatefulWidget {
  const TargetBottel({Key? key}) : super(key: key);

  @override
  _TargetBottelState createState() => _TargetBottelState();
}

class _TargetBottelState extends State<TargetBottel> {
  // ignore: prefer_const_constructors, prefer_final_fields, unused_field
  RangeValues _sliderRangeValues = RangeValues(18.0, 80.0);
  RangeLabels _sliderRangelabels = RangeLabels('18', '89');
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
                'TARGET BOTTEL',
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
                    'Male',
                    style: TextStyle(color: Colors.black),
                  ),
                  const Text(
                    'No',
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
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
                    'Female',
                    style: TextStyle(color: Colors.black),
                  ),
                  const Text(
                    'Yes',
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
            ),
          ),
          const Divider(),
          // ignore: sized_box_for_whitespace
          Container(
            height: 150,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Row(
                          children: [
                            const Text(
                              'Age Range : ',
                              style: TextStyle(
                                fontSize: 15.0,
                              ),
                            ),
                            Text(
                              '${_sliderRangeValues.start.round()} To ${_sliderRangeValues.end.round()} ',
                              style: const TextStyle(
                                fontSize: 15.0,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          width: 1,
                        ),
                        const Text(
                          'Age',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.white),
                        )
                      ],
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                    ),
                  ),
                  const Text(
                    'A wider gap means more bottles received',
                    style: TextStyle(fontSize: 10, color: Colors.grey),
                  ),
                  SliderTheme(
                    data: const SliderThemeData(
                        inactiveTrackColor: Colors.grey,
                        activeTrackColor: Colors.teal,
                        rangeTrackShape: RoundedRectRangeSliderTrackShape(),
                        thumbShape:
                            RoundSliderThumbShape(enabledThumbRadius: 8),
                        trackHeight: 1.0,
                        rangeValueIndicatorShape:
                            RectangularRangeSliderValueIndicatorShape(),
                        valueIndicatorColor: Colors.teal,
                        rangeTickMarkShape:
                            RoundRangeSliderTickMarkShape(tickMarkRadius: 4.5),
                        thumbColor: Colors.amber),
                    child: RangeSlider(
                      // labels: _sliderRangelabels,
                      values: _sliderRangeValues,
                      onChanged: (value) {
                        setState(() {
                          _sliderRangeValues = value;
                          _sliderRangelabels = RangeLabels(
                              '${value.start.round()} Age',
                              '${value.end.round()} Age');
                        });
                      },
                      min: 18,
                      max: 80,
                      divisions: 32,
                    ),
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
                    'Country',
                    style: TextStyle(color: Colors.black),
                  ),
                  const Text(
                    'India India India',
                    maxLines: 3,
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
            ),
          ),
          const Divider(),
        ],
      ),
    );
  }
}
