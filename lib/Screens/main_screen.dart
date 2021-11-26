import '/Screens/chatscreen.dart';
import '/Screens/main_profile_screen.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: 3,
        child: DefaultTabController(
          length: 3,
          child: Scaffold(
            appBar: PreferredSize(
              preferredSize: const Size.fromHeight(kToolbarHeight),
              child: Container(
                child: SafeArea(
                  child: Column(
                    children: <Widget>[
                      Expanded(child: Container()),
                      const TabBar(
                        tabs: [
                          Tab(
                              icon: Icon(
                            Icons.chalet_outlined,
                            color: Colors.black,
                          )),
                          Tab(
                            child: Text(
                              'Botteld',
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                          Tab(
                              icon: Icon(
                            Icons.person,
                            color: Colors.black,
                          )),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            body: TabBarView(
              children: <Widget>[
                Chat(),
                Column(
                  children: const <Widget>[Text("Cart Page")],
                ),
                MainProfileScreen()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
