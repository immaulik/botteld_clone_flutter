import 'package:botteld_clone_flutter/widgets/moreinfosetting.dart';

import '../widgets/target_bottel.dart';

import '../widgets/account_setting.dart';
import '../widgets/notification_setting.dart';
import '../widgets/profile_setting.dart';

import '../Screens/changeusername.dart';
import 'package:flutter/material.dart';
import 'package:dotted_border/dotted_border.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  _SettingScreenState createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          title: const Text(
            'Setting',
            textAlign: TextAlign.center,
          ),
          backgroundColor: Colors.blue,
          elevation: 0.0,
        ),
        extendBodyBehindAppBar: true,
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              Container(
                width: double.infinity,
                color: Colors.blue,
                child: SafeArea(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      // ignore: prefer_const_constructors
                      SizedBox(
                        height: 8,
                      ),
                      const CircleAvatar(
                        radius: 41.5,
                        backgroundColor: Colors.white,
                        child: CircleAvatar(
                          radius: 40,
                          backgroundImage: NetworkImage(
                              'https://avatars.githubusercontent.com/u/50351567?s=100&v=4'),
                        ),
                      ),
                      SizedBox(
                        height: size.height * 0.01,
                      ),
                      Container(
                        decoration: const BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.all(2),
                          child: Text(
                            ' Reputation : 12 ',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 3,
                      ),
                      GestureDetector(
                        onTap: () => print('tapped'),
                        child: Container(
                            // optional
                            padding: const EdgeInsets.only(bottom: 1.0),
                            decoration: const BoxDecoration(
                                border: Border(
                                    bottom: BorderSide(
                                        width: 1.0, color: Colors.white))),
                            child: const Text(
                              'View your profiles',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 12),
                            )),
                      ),
                      const SizedBox(height: 10),
                    ],
                  ),
                ),
              ),
              Container(
                height: size.height * 0.09,
                width: double.infinity,
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: DottedBorder(
                    color: Colors.black26,
                    strokeWidth: 1,
                    child: InkWell(
                      onTap: () {
                        Navigator.of(context).push(PageRouteBuilder(
                          pageBuilder:
                              (context, animation, secondaryAnimation) =>
                                  const ChangeUsername(),
                          transitionsBuilder:
                              (context, animation, secondaryAnimation, child) {
                            const begin = Offset(0.0, 1.0);
                            const end = Offset.zero;
                            const curve = Curves.ease;

                            var tween = Tween(begin: begin, end: end)
                                .chain(CurveTween(curve: curve));

                            return SlideTransition(
                              position: animation.drive(tween),
                              child: child,
                            );
                          },
                        ));
                      },
                      child: Container(
                          // optional
                          padding: const EdgeInsets.only(bottom: 1.0),
                          decoration: const BoxDecoration(border: Border()),
                          child: Center(
                            child: Container(
                              width: size.width * 0.8,
                              child: const Text(
                                'What are your dream,your passions?,you are unique, let the world know!',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          )),
                    ),
                  ),
                ),
              ),
              ProfileSetting(),
              AccountSetting(),
              NotificationSetting(),
              TargetBottel(),
              MoreInfoSetting(),
            ],
          ),
        ));
  }
}
