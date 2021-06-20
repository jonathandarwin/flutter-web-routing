import 'package:flutter/material.dart';

class ContactPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Text("This is Contact Page"),
            ElevatedButton(
              onPressed: (){
                Navigator.pushNamed(context, "/home");
              }, 
              child: Text("Home")
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: (){
                Navigator.of(context).pushNamed("/about");
              }, 
              child: Text("About")
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: (){
                Navigator.pushNamed(context, "/contact");
              }, 
              child: Text("Contact")
            ),
          ],
        ),
      ),
    );
  }
}