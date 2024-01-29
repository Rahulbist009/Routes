
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:routs/homepage.dart';
import 'package:routs/screenthree.dart';
import 'package:routs/screentwo.dart';
import 'package:routs/utils/routs_name.dart';
class Routes{

  static Route<dynamic>generateRoute(RouteSettings  settings){

    switch(settings.name){

      case RouteName.homepage:
        return MaterialPageRoute(builder: (context)=>HomePage());

      case RouteName.screentwo:
        return MaterialPageRoute(builder: (context)=>Screentwo(data: settings.arguments as Map,));

      case RouteName.screenthree:
        return MaterialPageRoute(builder: (context)=>Screenthree(data: settings.arguments as Map,));


      default:
       return MaterialPageRoute(builder: (context){
         return const Scaffold(
           body: Center(child: Text('NO route defined')),
         );
       });
    }

  }
}