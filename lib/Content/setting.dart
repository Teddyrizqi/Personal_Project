import 'package:flutter/material.dart';

class setting extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("Setting"),
          flexibleSpace: Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
            Colors.cyan,
            Colors.indigoAccent,
            Colors.blueAccent,
          ])))),
      // backgroundColor: Colors.indigoAccent,
      body: Column(
        children: [
          Center(
            child: Text(
                "\nInformation"
                "\n\nLorem ipsum dolor sit amet, consectetur adipiscing elit"
                ". Quisque eu tellus sit amet ligula aliquet malesuada. "
                "Class aptent taciti sociosqu ad litora torquent per conubia "
                "nostra, per inceptos himenaeos. Etiam lacus lectus, scelerisque "
                "ac efficitur in, convallis vel massa. Nunc pharetra, eros eleifend rutrum suscipit, "
                "lacus risus dictum orci, vel gravida nibh mi in nulla. Duis iaculis sodales hendrerit. "
                "Suspendisse scelerisque tincidunt tortor et facilisis. Mauris sit amet varius neque. "
                "Maecenas at orci fermentum, bibendum velit a, laoreet massa. Praesent justo tellus, "
                "suscipit ac felis in, semper feugiat eros. Vestibulum sed fermentum nibh. Vivamus "
                "semper vehicula magna, nec malesuada est consectetur quis. Donec id purus at nibh "
                "consectetur euismod non vel neque. Morbi vehicula, nibh eu eleifend congue, est turpis "
                "fermentum dolor, in consectetur dui ipsum et nisi. Sed ac lacus semper, blandit orci vitae, "
                "hendrerit lorem. Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
                style: TextStyle(fontSize: 15),
                textAlign: TextAlign.justify),
          ),
        ],
      ),
    );
  }
}
