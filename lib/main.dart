import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Satellite TV',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        body: OrientationBuilder(
          builder: (context, orientation) {
            return GridView.count(
              crossAxisCount: orientation == Orientation.portrait ? 2 : 3,
              crossAxisSpacing: 2.0,
              children: List.generate(
                6,
                (index) {
                  return Image.asset(
                    'images/image$index.png',
                    width: 200.0,
                    height: 200.0,
                  );
                },
              ),
            );
          },
        ),
      ),
    );
  }
}
