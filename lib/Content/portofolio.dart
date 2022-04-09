import 'package:flutter/material.dart';

class portofolio extends StatelessWidget {
  final List<String> image = [
    'img/data/tensura.jpg',
    'img/data/aquatope.jpg',
    'img/data/belle.jpg',
    'img/data/cover-selection-project.jpg',
    'img/data/senpai-ga-uzai.jpg',
    'img/data/ousama-ranking.jpg',
    'img/data/Taishou-Otome.jpg',
    'img/data/akebi-chan.jpg',
    'img/data/KNY-yuukaku-hen.jpg',
    'img/data/sabikui.webp',
    'img/data/koroshi-ai.jpg',
    'img/data/tensai-ouji.jpg',
    'img/data/leadale-cayna.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("PortoFolio"),
          flexibleSpace: Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [
                        Colors.cyan,
                        Colors.indigoAccent,
                        Colors.blueAccent,
                      ]
                  ))
          )
      ),
      body: GridView.count(
        crossAxisCount: 2,
        children: List.generate(13, (index) {
          return Card(
            child: Image.asset(
              image[index],
              // width: 150,
              // height: 150,
              fit: BoxFit.cover,
            ),
          );
        },),
      )
    );
  }
}
