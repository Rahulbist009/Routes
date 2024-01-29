import 'package:flutter/material.dart';
import 'package:routs/utils/routs_name.dart';

class Screentwo extends StatefulWidget {
  dynamic data;
  Screentwo({super.key, required this.data});

  @override
  State<Screentwo> createState() => _ScreentwoState();
}

class _ScreentwoState extends State<Screentwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('screentwo'),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
                child: Text(
              widget.data['node'],
              style: const TextStyle(fontSize: 25),
            )),
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, RouteName.screenthree);
              },
              child: Container(
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(20)),
                child: const Center(
                  child: Text('Screentwo'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
