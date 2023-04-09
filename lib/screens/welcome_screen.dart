// ignore_for_file: prefer_const_constructors

import 'package:e_learning_app/constants.dart';
import 'package:e_learning_app/screens/home_screen.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 111, 45, 253),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
                flex: 3,
                child: Container(
                  width: double.infinity,
                  decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 111, 45, 253),
                      borderRadius:
                          BorderRadius.only(bottomRight: Radius.circular(50))),
                  child: Column(
                    children: const [
                      Expanded (child: Center(child: Text("   Welcome to the\n Future of Learning!",
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255,0,0,0),
                        ),))
                      )],
                  ),
                )
            ),
           // Spacer(),
            Expanded(child: Text(" Start Learning by best creators for",
                     style: TextStyle(
                     fontSize: 28,
                    fontWeight: FontWeight.bold,
                     color: Color.fromARGB(255,0,0,0),),
            ),
            ),
            Expanded(child: Row(
              //button position
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
               Text("50+",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),),
                // Text("Mentor",
                //   style: TextStyle(
                //     fontSize: 15,
                //     color: Colors.black,
                //   ),)
              ],)
            ),
            Expanded(child: Row(
              //button position
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MaterialButton(
                  height: 60,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0)),
                  color: Colors.orange,
                  onPressed: () {
                    //home screen path
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => HomeScreen()));
                  },
                  child: Text(
                    "Start Learning Now",
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.white),
                  ),
                )
              ],
            )
            ),
            Expanded(
                flex: 2,
                child: Container(
                  color: Color.fromARGB(255, 111, 45, 253),
                  child: Container(
                    width: double.infinity,
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(50),
                        )),
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Column(
                        children: const [
                          Spacer(),
                          Text(
                            "mytestgo",
                            style: TextStyle(
                              fontSize: 28,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 111, 45, 253),
                            ),
                          ),
                          Spacer(),
                          Text(
                            "NEET Test Prepration",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.black54,
                              wordSpacing: 2.5,
                              height: 1.5,
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Spacer(
                            flex: 3,
                          ),
                          //repleace sizebox with spacer
                      ],),
                    ),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
