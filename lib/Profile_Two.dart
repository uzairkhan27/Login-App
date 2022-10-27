// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:login_app/Profile_One.dart';
import 'package:contained_tab_bar_view/contained_tab_bar_view.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:drop_shadow_image/drop_shadow_image.dart';

class ProfileTwo extends StatefulWidget {
  const ProfileTwo({Key? key}) : super(key: key);

  @override
  State<ProfileTwo> createState() => _ProfileTwoState();
}

class _ProfileTwoState extends State<ProfileTwo> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xfff5f5f5),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30.0),
          topRight: Radius.circular(30.0),
        ),
      ),
      // padding: EdgeInsets.all(8.0),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.60,
      child: Padding(
        padding: const EdgeInsets.only(top: 40.0),
        child: ContainedTabBarView(
          tabBarProperties: TabBarProperties(
            indicatorSize: TabBarIndicatorSize.label,
            indicatorWeight: 5.0,
            height: MediaQuery.of(context).size.height * 0.05,
            width: MediaQuery.of(context).size.width * 0.60,
            position: TabBarPosition.top,
          ),
          tabBarViewProperties: const TabBarViewProperties(),
          tabs: const [
            Text(
              'Availability',
              style: TextStyle(
                color: Colors.blueGrey,
                fontSize: 16.0,
              ),
            ),
            Text(
              'Reviews',
              style: TextStyle(
                color: Colors.blueGrey,
                fontSize: 16.0,
              ),
            ),
          ],
          views: [
            Padding(
              padding: const EdgeInsets.only(left: 10.0, right: 10.0, top: 10.0),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0,bottom: 8.0),
                      child: Container(
                        padding: EdgeInsets.only(bottom: 10.0),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: ExpansionTile(
                          trailing: const SizedBox(),
                          title: Padding(
                            padding: const EdgeInsets.only(top: 7.0),
                            child: Row(
                                children: [
                                  ClipPath(
                                    clipper: ArrowClipper(25, 120, Edge.RIGHT),
                                    child: Container(
                                      height: MediaQuery.of(context).size.height * 0.11,
                                      width: MediaQuery.of(context).size.width * 0.22,
                                      decoration: BoxDecoration(
                                        color: const Color(0xff00b0e7),
                                        borderRadius: BorderRadius.circular(10.0),
                                      ),
                                      child: const Padding(
                                        padding:
                                            EdgeInsets.only(top: 20.0, left: 10.0),
                                        child: Text(
                                          'MON \n 18',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 15.0,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 8.0,
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: const [
                                      Text(
                                        'Class Duration',
                                        style: TextStyle(
                                          fontSize: 12.0,
                                          color: Colors.black87,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 2.0,
                                      ),
                                      Text(
                                        '1.5hrs approx',
                                        style: TextStyle(
                                            fontSize: 12.0,
                                            color: Colors.black87,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                  const VerticalDivider(
                                    width: 20.0,
                                    color: Colors.black54,
                                    thickness: 0.6,
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: const [
                                      Text(
                                        'Timing (All day)',
                                        style: TextStyle(
                                          fontSize: 12.0,
                                          color: Colors.black87,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 2.0,
                                      ),
                                      Text(
                                        '1.5hrs approx',
                                        style: TextStyle(
                                            fontSize: 12.0,
                                            color: Colors.black87,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                          ),
                          children: [
                            Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 20.0),
                                  child: Container(
                                    margin: EdgeInsets.only(left: 60.0, bottom: 20.0),
                                    decoration: BoxDecoration(
                                        color: Color(0xffeeeeee),
                                       borderRadius: BorderRadius.circular(20.0)
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                        left: 20.0,
                                        right: 60.0,
                                        top: 8.0,
                                        bottom: 8.0,
                                      ),
                                      child: Text(
                                        '9AM - 11Am (Morning)',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 12.0,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 60.0, bottom: 20.0),
                                  decoration: BoxDecoration(
                                      color: Color(0xffeeeeee),
                                      borderRadius: BorderRadius.circular(20.0)
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                      left: 20.0,
                                      right: 60.0,
                                      top: 8.0,
                                      bottom: 8.0,
                                    ),
                                    child: Text(
                                      '5PM - 7PM (Evening)',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 12.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
                      child: Container(
                        padding: EdgeInsets.only(bottom: 10.0),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: ExpansionTile(
                          trailing: const SizedBox(),
                          title: Padding(
                            padding: const EdgeInsets.only(top: 7.0),
                            child: SingleChildScrollView(
                              child: Row(
                                children: [
                                  ClipPath(
                                    clipper: ArrowClipper(25, 120, Edge.RIGHT),
                                    child: Container(
                                      height: MediaQuery.of(context).size.height * 0.11,
                                      width: MediaQuery.of(context).size.width * 0.22,
                                      decoration: BoxDecoration(
                                        color: const Color(0xff00eb98),
                                        borderRadius: BorderRadius.circular(10.0),
                                      ),
                                      child: const Padding(
                                        padding:
                                        EdgeInsets.only(top: 20.0, left: 10.0),
                                        child: Text(
                                          'SUN \n 17',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 15.0,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 8.0,
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: const [
                                      Text(
                                        'Class Duration',
                                        style: TextStyle(
                                          fontSize: 12.0,
                                          color: Colors.black87,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 2.0,
                                      ),
                                      Text(
                                        '2 hrs approx',
                                        style: TextStyle(
                                            fontSize: 12.0,
                                            color: Colors.black87,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                  const VerticalDivider(
                                    width: 20.0,
                                    color: Colors.black54,
                                    thickness: 0.6,
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: const [
                                      Text(
                                        'Timing(2 slots)',
                                        style: TextStyle(
                                          fontSize: 12.0,
                                          color: Colors.black87,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 2.0,
                                      ),
                                      Text(
                                        'Al-Quran Basic',
                                        style: TextStyle(
                                            fontSize: 12.0,
                                            color: Colors.black87,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          children: [
                            Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 20.0),
                                  child: Container(
                                    margin: EdgeInsets.only(left: 60.0, bottom: 20.0),
                                    decoration: BoxDecoration(
                                        color: Color(0xffeeeeee),
                                        borderRadius: BorderRadius.circular(20.0)
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                        left: 20.0,
                                        right: 60.0,
                                        top: 8.0,
                                        bottom: 8.0,
                                      ),
                                      child: Text(
                                        '9AM - 11Am (Morning)',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 12.0,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 60.0, bottom: 20.0),
                                  decoration: BoxDecoration(
                                      color: Color(0xffeeeeee),
                                      borderRadius: BorderRadius.circular(20.0)
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                      left: 20.0,
                                      right: 60.0,
                                      top: 8.0,
                                      bottom: 8.0,
                                    ),
                                    child: Text(
                                      '5PM - 7PM (Evening)',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 12.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
                      child: Container(
                        padding: EdgeInsets.only(bottom: 10.0),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: ExpansionTile(
                          trailing: const SizedBox(),
                          title: Padding(
                            padding: const EdgeInsets.only(top: 7.0),
                            child: SingleChildScrollView(
                              child: Row(
                                children: [
                                  ClipPath(
                                    clipper: ArrowClipper(25, 120, Edge.RIGHT),
                                    child: Container(
                                      height: MediaQuery.of(context).size.height * 0.11,
                                      width: MediaQuery.of(context).size.width * 0.22,
                                      decoration: BoxDecoration(
                                        color: const Color(0xff00b0e7),
                                        borderRadius: BorderRadius.circular(10.0),
                                      ),
                                      child: const Padding(
                                        padding:
                                        EdgeInsets.only(top: 20.0, left: 10.0),
                                        child: Text(
                                          'THU \n 14',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 15.0,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 8.0,
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: const [
                                      Text(
                                        'Class Duration',
                                        style: TextStyle(
                                          fontSize: 12.0,
                                          color: Colors.black87,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 2.0,
                                      ),
                                      Text(
                                        '1.5hrs approx',
                                        style: TextStyle(
                                            fontSize: 12.0,
                                            color: Colors.black87,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                  const VerticalDivider(
                                    color: Colors.red,
                                    thickness: 2,
                                    indent: 5,
                                    endIndent: 0,
                                    width: 20,
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: const [
                                      Text(
                                        'Timing (All day)',
                                        style: TextStyle(
                                          fontSize: 12.0,
                                          color: Colors.black87,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 2.0,
                                      ),
                                      Text(
                                        '1.5hrs approx',
                                        style: TextStyle(
                                            fontSize: 12.0,
                                            color: Colors.black87,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          children: [
                            Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 20.0),
                                  child: Container(
                                    margin: EdgeInsets.only(left: 60.0, bottom: 20.0),
                                    decoration: BoxDecoration(
                                        color: Color(0xffeeeeee),
                                        borderRadius: BorderRadius.circular(20.0)
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                        left: 20.0,
                                        right: 60.0,
                                        top: 8.0,
                                        bottom: 8.0,
                                      ),
                                      child: Text(
                                        '9AM - 11Am (Morning)',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 12.0,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 60.0, bottom: 20.0),
                                  decoration: BoxDecoration(
                                      color: Color(0xffeeeeee),
                                      borderRadius: BorderRadius.circular(20.0)
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                      left: 20.0,
                                      right: 60.0,
                                      top: 8.0,
                                      bottom: 8.0,
                                    ),
                                    child: Text(
                                      '5PM - 7PM (Evening)',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 12.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0, left: 20.0,right: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Students Reviews',
                    style: TextStyle(
                      color: Colors.blueGrey,
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 20.0,),

                  Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 30.0),
                        child: Container(
                          height: MediaQuery.of(context).size.height * 0.15,
                          width: MediaQuery.of(context).size.width * 0.90,
                          decoration: BoxDecoration(
                            color: Color(0xffeeeeee),
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(
                              top: 20.0,
                              bottom: 20.0,
                              left: 40.0,
                              right: 10.0,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                    'Nadia',
                                style: TextStyle(
                                    fontSize: 15.0,
                                    fontWeight: FontWeight.bold
                                ),
                                ),
                                SizedBox(
                                  height: 8.0,
                                ),
                                Text(
                                  'This tutor is really nice, he helped me getting the most oyt me',
                                  style: TextStyle(
                                    fontSize: 12.0,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 10.0,
                        top: 5.0,
                        child: PhysicalModel(
                          color: Colors.white10,
                          borderRadius: BorderRadius.circular(50.0),
                          shadowColor: Colors.grey,
                          elevation: 4.0,
                          child: CircleAvatar(
                            radius: 25.0,
                            backgroundColor: Colors.transparent,
                            backgroundImage: AssetImage('assets/images/woman.png'),
                          ),
                        ),
                      ),
                    ],
                  ),

                  SizedBox(
                    height: 20.0,
                  ),
                  Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 30.0),
                        child: Container(
                          height: MediaQuery.of(context).size.height * 0.15,
                          width: MediaQuery.of(context).size.width * 0.90,
                          decoration: BoxDecoration(
                            color: Color(0xffeeeeee),
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(
                              top: 20.0,
                              bottom: 20.0,
                              left: 40.0,
                              right: 10.0,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Ana',
                                  style: TextStyle(
                                      fontSize: 15.0,
                                      fontWeight: FontWeight.bold
                                  ),
                                ),
                                SizedBox(
                                  height: 8.0,
                                ),
                                Text(
                                  'I love the way Master zubair teaches, he is calm personality',
                                  style: TextStyle(
                                    fontSize: 12.0,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 10.0,
                        top: 5.0,
                        child: PhysicalModel(
                          color: Colors.white10,
                          borderRadius: BorderRadius.circular(50.0),
                          shadowColor: Colors.grey,
                          elevation: 4.0,
                          child: CircleAvatar(
                            radius: 25.0,
                            backgroundColor: Colors.transparent,
                            backgroundImage: AssetImage('assets/images/man.png'),
                          ),
                        ),
                      ),
                    ],
                  ),

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
