import 'package:flutter/material.dart';
import 'package:routs/homepage.dart';
import 'package:routs/utils/routes.dart';
import 'package:routs/utils/routs_name.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
     initialRoute: RouteName.homepage,
      onGenerateRoute: Routes.generateRoute,

    );
  }
}
