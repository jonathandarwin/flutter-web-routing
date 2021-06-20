import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Text("This is Home Page"),
            ElevatedButton(
              onPressed: (){
                Navigator.pushNamed(context, "/home");
              }, 
              child: Text("Home")
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: (){
                Navigator.pushNamed(context, "/about");
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
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: (){
                Navigator.pushNamed(context, "/detail", arguments: 1);
              }, 
              child: Text("Detail")
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: (){
                Navigator.pushNamed(context, "/detailurl/1");
              }, 
              child: Text("Detail From URL")
            ),
          ],
        ),
      ),
    );
  }
}