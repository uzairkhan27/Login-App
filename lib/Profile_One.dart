import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:login_app/Profile_Two.dart';

class ProfileOne extends StatefulWidget {
  const ProfileOne({Key? key}) : super(key: key);

  @override
  State<ProfileOne> createState() => _ProfileOneState();
}

class _ProfileOneState extends State<ProfileOne> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipPath(
                clipper: DiagonalPathClipperTwo(),
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.24,
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(40),
                      bottomRight: Radius.circular(30.0),
                    ),
                    gradient: LinearGradient(
                      colors: [
                        Color(0xff00eb98),
                        Color(0xff00b0e7),
                      ],
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                    child: Stack(
                      children: [
                        Center(
                          child: Text(
                            'My Qutor',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 24.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CircleAvatar(
                                backgroundColor: Colors.white,
                                child: Icon(
                                  Icons.arrow_back_outlined,
                                  color: Colors.black,
                                ),
                                radius: 20.0,
                              ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const [
                  Padding(
                    padding: EdgeInsets.only(left: 15.0, top: 20.0),
                    child: Text(
                      'Master Zubair',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 22.0,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 8.0,
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 20.0,right: 60.0),
                    child: Icon(
                      Icons.male_sharp,
                      color: Color(0xff00adea),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 20.0),
                    child: CircleAvatar(
                      backgroundImage: AssetImage('assets/images/images.jpg'),
                      radius: 40.0,
                    ),
                  ),
                ],
              ),
              const Padding(
                padding: EdgeInsets.only(left: 15.0, bottom: 30.0),
                child: Text(
                  'Alhamdulillah, For 1 more year \n being in this Platform, and it shaped me.',
                  style: TextStyle(
                    color: Colors.black54,
                    fontWeight: FontWeight.w500,
                    fontSize: 16.0,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15.0),
                child: Row(
                  children: const [
                    Icon(
                      Icons.location_on,
                      color: Color(0xff00adea),
                      size: 22.0,
                    ),
                    Text(
                      'Wangso Maju',
                      style: TextStyle(
                        color: Colors.blueGrey,
                        fontSize: 16.0,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      width: 20.0,
                    ),
                    Icon(
                      Icons.star,
                      color: Color(0xff00adea),
                      size: 22.0,
                    ),
                    Text(
                      ' 2 years',
                      style: TextStyle(
                        color: Colors.blueGrey,
                        fontSize: 16.0,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 60.0,
              ),
              ProfileTwo(),

              const SizedBox(
                height: 20.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
