import 'package:flutter/material.dart';

class DetailUrlPage extends StatelessWidget {
  final int id;
  const DetailUrlPage({required this.id});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Text("ID From URL : $id"),
            ElevatedButton(
              onPressed: (){
                Navigator.of(context).pushNamed("/home");
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
                Navigator.of(context).pushNamed("/contact");
              }, 
              child: Text("Contact")
            ),
          ],
        ),
      ),
    );
  }
}