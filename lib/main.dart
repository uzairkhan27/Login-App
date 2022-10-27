import 'package:flutter/material.dart';
import '../pages/Login.dart';

void main() => runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomePage(),
      ),
    );


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              // color: Colors.grey,
              child: Padding(
                padding: EdgeInsets.only(top: 50.0, left: 20.0),
                child: Text(
                  'Choose your account type ?',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 22.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => LoginPage(),
                ));
              },
              child: Container(
                margin: EdgeInsets.only(left: 15.0, right: 15.0),
                height: MediaQuery.of(context).size.height * 0.13,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black26,
                      offset: Offset(0.0, 0.0),
                      blurRadius: .8,
                      spreadRadius: 0.0,
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 16.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage(
                          'assets/images/icon-one.png',
                        ),
                        radius: 25,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Parent/Guardian',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              height: 3.0,
                            ),
                            Text(
                              'Explore and apply yourself and on your kids behalf',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 10.0,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),

            SizedBox(
              height: 20.0,
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => LoginPage(),
                ));
              },
              child: Container(
                margin: EdgeInsets.only(left: 15.0, right: 15.0),
                height: MediaQuery.of(context).size.height * 0.13,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black26,
                      offset: Offset(0.0, 0.0),
                      blurRadius: .8,
                      spreadRadius: 0.0,
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 16.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage(
                          'assets/images/icon-two.png',
                        ),
                        radius: 25,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'My Self',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              height: 3.0,
                            ),
                            Text(
                              'Explore and apply yourself only',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 10.0,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
// Image.network('https://cdn3d.iconscout.com/3d/premium/thumb/users-4071826-3408814@0.png',
// width: 60.0,
// height: 60.0,
// ),
