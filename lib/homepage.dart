import 'package:flutter/material.dart';
import 'package:routs/screentwo.dart';
import 'package:routs/utils/routs_name.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Routs',
          style: TextStyle(fontSize: 30),
        ),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            InkWell(
              onTap: (){

                Navigator.pushNamed(context, RouteName.screentwo
                ,
                arguments: {
                  'node':'js module',
                  'Name':'Rahul '

                });
              },
              child: Container(
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.green, borderRadius: BorderRadius.circular(20)),
                child: const Center(
                  child: Text('HomePage'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
