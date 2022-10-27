import 'package:flutter/material.dart';
import 'package:login_app/pages/Signup.dart';
import '../Profile_One.dart';
import '../Profile_Two.dart';

// import 'Login.dart';
class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                    margin: EdgeInsets.only(top: 60.0, bottom: 60.0),
                          height: MediaQuery.of(context).size.height * 0.14,
                          width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                            'assets/images/main-image.png',
                          ),
                        ),
                      ),
                    ),
                   Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 30.0, right:
                          30.0),
                          child: Text(
                              'Login Now',
                            style: TextStyle(
                              color: Color(0xff34495E),
                              fontWeight: FontWeight.bold,
                              fontSize: 26.0,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 8.0,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 30.0, right: 30.0),
                          child: Text(
                              'Please enter the details below to continue.',
                            style: TextStyle(
                              fontSize: 15.0,
                              color: Color(0xff34495E),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        Container(
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 20.0,right: 20.0),
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Color(0xFFEBEDEF).withOpacity(.5),
                                    borderRadius: BorderRadius.circular(20.0)
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 20.0,
                                      vertical: 2.0,
                                    ),
                                    child: TextField(
                                      decoration: InputDecoration(
                                        border: InputBorder.none,
                                        hintText: 'email',
                                        hintStyle: TextStyle(
                                          color: Color(0xFF85929E),
                                          fontSize: 15.0,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        Container(
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                                child: Container(
                                  decoration: BoxDecoration(
                                      color: Color(0xFFEBEDEF).withOpacity(.5),
                                    borderRadius: BorderRadius.circular(20.0),),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 20.0,
                                      vertical: 2.0,
                                    ),
                                    child: TextField(
                                      decoration: InputDecoration(
                                        border: InputBorder.none,
                                        hintText: 'password',
                                        hintStyle: TextStyle(
                                          color: Color(0xFF85929E),
                                          fontSize: 15.0,
                                        ),
                                      ),
                                    ),
                                  ),
                                  ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                      ],
                    ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 30.0),
                    child: Text(
                      'Forgot Password ?',
                      style: TextStyle(
                        color: Color(0xFF00cebf),
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold,

                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 60.0,
              ),
             GestureDetector(
               onTap: (){
                 Navigator.of(context).push(MaterialPageRoute(
                     builder: (context) => ProfileOne(),
                 ));
               },
               child: Container(
                 margin: EdgeInsets.only(left: 20.0, right: 20.0),
                 height: MediaQuery.of(context).size.height * 0.08,
                 width: MediaQuery.of(context).size.width,
                 decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(20.0),
                   gradient: LinearGradient(
                     colors: [
                       Color(0xff00eb98),
                       Color(0xff00b0e7),
                     ],
                   ),
                 ),
                 child: Center(
                   child: Text(
                       'Login',
                     style: TextStyle(
                       color: Colors.white,
                       fontWeight: FontWeight.bold,
                       fontSize: 16.0,
                     ),
                   ),
                 ),
               ),
             ),
              SizedBox(
                height: 20.0,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                      'Don\'t have an account,',
                    style: TextStyle(
                      fontSize: 15.0,
                      color: Color(0xff34495E),
                    ),
                  ),
                  GestureDetector(
                    onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => SignupPage(),));
                    },
                    child: Container(
                      child: Text(
                          ' Let\'s Signup!',
                          style: TextStyle(
                            // color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 15.0,
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
    );
  }
}
