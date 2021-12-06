import 'package:flutter/material.dart';

class ChangeIntrest extends StatefulWidget {
  const ChangeIntrest({ Key? key }) : super(key: key);

  @override
  _ChangeIntrestState createState() => _ChangeIntrestState();
}

class _ChangeIntrestState extends State<ChangeIntrest> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Centers of interest (5 Max)',
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
              
            ),
          ),
    
        ],
      ),
    );
  }
}