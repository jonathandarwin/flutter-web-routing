import 'package:flutter/material.dart';
import 'package:router_web_2_0/pages/detail_url.dart';
import 'config/configure_nonweb.dart' if (dart.library.html) 'config/configure_web.dart';
import 'package:router_web_2_0/pages/about.dart';
import 'package:router_web_2_0/pages/contact.dart';
import 'pages/detail.dart';
import 'pages/home.dart';

void main() {
  configureApp();
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateRoute: (settings) {
        print(settings.name);
        var uri = Uri.parse(settings.name!);
        print(uri.pathSegments);
        print(uri.queryParameters);
    
        if(settings.name == "/") return MaterialPageRoute(settings: settings, builder: (context) => HomePage());
        else if(uri.pathSegments.first == "about") return MaterialPageRoute(settings: settings, builder: (context) => AboutPage());
        else if(uri.pathSegments.first == "contact") return MaterialPageRoute(settings: settings, builder: (context) => ContactPage());
        else if(uri.pathSegments.first == "detail") {
          int id = settings.arguments as int;
          return MaterialPageRoute(settings: settings, builder: (context) => DetailPage(id: id));
        }
        else if(uri.pathSegments.first == "detailurl") {
          String id = uri.pathSegments[1];
          return MaterialPageRoute(settings: settings, builder: (context) => DetailUrlPage(id: int.parse(id)));
        }

        // Default URL
        return MaterialPageRoute(settings: settings, builder: (context) => HomePage());
      },
      // initialRoute: "/home",
      // routes: {
      //   "/home" : (_) => HomePage(),
      //   "/about" : (_) => AboutPage(),
      //   "/contact" : (_) => ContactPage(),
      // },
    );
  }
}