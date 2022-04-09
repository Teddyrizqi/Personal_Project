import 'package:flutter/material.dart';
import '../Screen.dart';

class contact extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("Contact Us"),
          flexibleSpace: Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
            Colors.cyan,
            Colors.indigoAccent,
            Colors.blueAccent,
          ])))),
      body: Form(
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(top: 20.0, right: 10.0),
              child: TextFormField(
                decoration: InputDecoration(
                  icon: Icon(Icons.person),
                  border: OutlineInputBorder(),
                  hintText: 'Enter Your Name',
                  labelText: 'Name',
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 20.0, right: 10.0),
              child: TextFormField(
                decoration: InputDecoration(icon: Icon(Icons.alternate_email_outlined), border: OutlineInputBorder(), hintText: 'Input Your Email', labelText: 'E-mail'),
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 20.0, right: 10.0),
              child: TextFormField(
                decoration: InputDecoration(
                  icon: Icon(Icons.phone),
                  border: OutlineInputBorder(),
                  hintText: 'Enter a Phone Number',
                  labelText: 'Phone',
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 20.0, right: 10.0),
              child: TextFormField(
                maxLength: 500,
                decoration: InputDecoration(icon: Icon(Icons.mail_outlined), border: OutlineInputBorder(), hintText: 'Enter Your Message', labelText: '   Message', helperText: 'Helper Text', contentPadding: EdgeInsets.symmetric(vertical: 40)),
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 40.0),
              child: Center(
                child: RaisedButton(
                  child: Text('Submit', style: TextStyle(fontSize: 15)),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
