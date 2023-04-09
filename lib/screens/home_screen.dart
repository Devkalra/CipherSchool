import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:e_learning_app/constants.dart';
import 'package:e_learning_app/model/product_model.dart';
import 'package:flutter/material.dart';

import 'components/appbar.dart';
import 'components/category.dart';
import 'components/sorting.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //bottom bar
      // now we will use bottom bar package
      bottomNavigationBar: BottomNavyBar(
        selectedIndex: _selectedIndex,
        showElevation: true, // use this to remove appBar's elevation
        onItemSelected: (index) => setState(() {
          _selectedIndex = index;
        }),
        items: [
          BottomNavyBarItem(
              icon: Icon(Icons.home),
              title: Text('Home'),
              activeColor: Colors.orange,
              inactiveColor: Colors.black54),
          BottomNavyBarItem(
            icon: Icon(Icons.collections_bookmark_outlined),
            title: Text('Courses'),
            inactiveColor: Colors.black54,
            activeColor: Colors.orange,
          ),
          BottomNavyBarItem(
            icon: Icon(Icons.local_fire_department),
            title: Text('Trending'),
            inactiveColor: Colors.black54,
            activeColor: Colors.orange,
          ),
          BottomNavyBarItem(
            icon: Icon(Icons.person),
            title: Text('My Profile'),
            inactiveColor: Colors.black54,
            activeColor: kpink,
          ),
        ],
      ),
      // THE BELOW PART SHOULD BE NAVIGATED BY COURSE BUTTON FROM BELOW BAR
      body: SafeArea(
        child: ListView(
          children: [
            CustomeAppBar(),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Column(
                children: [
                  // Row(
                  //   children: [
                  //     Column(
                  //       crossAxisAlignment: CrossAxisAlignment.start,
                  //       children: const [
                  //         Text(
                  //           "User Name",
                  //           style: TextStyle(
                  //             fontSize: 28,
                  //             fontWeight: FontWeight.bold,
                  //           ),
                  //         ),
                  //         SizedBox(
                  //           height: 10.0,
                  //         ),
                  //         Text(
                  //           "**********",
                  //           style: TextStyle(
                  //             color: Colors.black54,
                  //             wordSpacing: 2.5,
                  //             fontSize: 16,
                  //             fontWeight: FontWeight.w500,
                  //           ),
                  //         ),
                  //       ],
                  //     ),
                  //     const Spacer(),
                  //     // Column(
                  //     //   children: [
                  //     //     Container(
                  //     //       height: 70,
                  //     //       width: 70,
                  //     //       decoration: BoxDecoration(
                  //     //           color: kpurple,
                  //     //           borderRadius: BorderRadius.circular(15.0)),
                  //     //       // child: Image.asset(
                  //     //       //   "assets/images/profile.png",
                  //     //       // ),
                  //     //     ),
                  //     //   ],
                  //     // ),
                  //   ],
                  // ),
                  const SizedBox(
                    height: 20,
                  ),
                  //sorting
                  Sorting(),
                  const SizedBox(
                    height: 20,
                  ),
                  //category list

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Recommended Courses",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Expanded(child: Row(
                        //button position
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          MaterialButton(
                            height: 20,
                            shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.zero),
                            color: Colors.black87,
                            onPressed: () {},
                            child: const Text(
                              "Popular",
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white),
                            ),
                          )
                        ],
                      )
                      ),
                    ],
                  ),
                  //now we create model of our images and colors which we will use in our app
                  const SizedBox(
                    height: 10,
                  ),
//we can not use gridview inside column
//use shrinkwrap and physical scroll
                  CategoryList(),
                  const SizedBox(
                    height: 10,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
