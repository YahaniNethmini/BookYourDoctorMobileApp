import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class HomeScreen extends StatelessWidget {
  //const HomeScreen({super.key});

  List categories = [
    "Heart",
    "Dental",
    "Brain",
    "Ear",
    "Eye",
    "Stomach",
  ];

  List<Icon> catIcon = [
    Icon(MdiIcons.heartPlus, color: Colors.white, size: 30),
    Icon(MdiIcons.toothOutline, color: Colors.white, size: 30),
    Icon(MdiIcons.brain, color: Colors.white, size: 30),
    Icon(MdiIcons.earHearing, color: Colors.white, size: 30),
    Icon(MdiIcons.eye, color: Colors.white, size: 30),
    Icon(MdiIcons.stomach, color: Colors.white, size: 30),
  ];

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Stack(children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 3.0,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.lightBlueAccent, // The list should have at least two colors.
                  Colors.blue,            // Add another color to complete the gradient.
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
            ),
          ),
          Padding(
              padding: EdgeInsets.only(top: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CircleAvatar(
                            radius: 30,
                            backgroundImage: 
                              AssetImage("images/img01.jpg"),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],),
      ),
    );
  }
}

