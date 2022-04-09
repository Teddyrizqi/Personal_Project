import 'package:flutter/material.dart';

class galery extends StatelessWidget {
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

  final List<String> sub = [
    'Tensura',
    'Aquatope',
    'Belle',
    'Selection project',
    'Senpai ga Uzai',
    'Ousama Ranking',
    'Taishou Otome',
    'Akebi-chan no Sailor Fuku',
    'Yuukaku-hen',
    'Sabikui Bisco',
    'Koroshi ai',
    'Tensai no Ouji',
    'Leadale',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Galery"),
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
      body: GridView.builder(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 30,
        ),
        itemCount: image.length,
        itemBuilder: (context, index) {
          return Container(
            child: ListTile(
              title: ClipRRect(
                  child: Image.asset(
                    image[index],
                    height: 150,
                    width: 200,
                    fit: BoxFit.cover,
                  )
              ),
              subtitle: Text(sub[index], style: TextStyle(color: Colors.black87)),
            ),
          );
        },
      ),
    );
  }

}
