import 'package:flutter/material.dart';

class profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text("Profile"),
            flexibleSpace: Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [
              Colors.cyan,
              Colors.indigoAccent,
              Colors.blueAccent,
            ])))),
        body: Column(
          children: [
            Center(
              child: Image.asset('img/Kurumi.jpg'),
            ),
            Center(
              child: Text(
                "Nama   : Teddy Latief Miftahur Rizqi"
                "\nKelas    : 2 TI A"
                "\nNIM      : 362055401023"
                "\nTTL      : 04 September 2002"
                "\nAlamat   : Dsn.Pandansari  "
                "\nRT/RW.004/002 "
                "\nDesa.Sarimulyo "
                "\nKec.Cluring "
                "\nBanyuwangi",
                style: TextStyle(fontSize: 20),
              ),
            ),
          ],
        ));
  }
}
