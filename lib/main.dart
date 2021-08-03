import 'package:flutter/material.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:snappable/snappable.dart';

void main() => runApp(
      MyApp(), // Wrap your appq
    );

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Thanos Snap Effect',
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.deepPurple,
            title: Text('Thanos Snap Effect', style: TextStyle(fontSize: 20)),
          ),
          body: Align(
            alignment: Alignment.center,
            child: Container(
              margin: EdgeInsets.all(32),
              height: 300,
              width: double.infinity,
              child: Snappable(
                snapOnTap: true,
                child: Image.asset('assets/images/download2.jpg',
                    fit: BoxFit.contain),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
