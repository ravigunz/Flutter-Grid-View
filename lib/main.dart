import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            leading: IconButton(
              icon: Icon(Icons.menu),
              onPressed: () {},
            ),
            title: Text('Tabs'),
            bottom: TabBar(tabs: [
              Tab(
                child: Text('Home'),
              ),
              Tab(
                child: Text('Channel Numbers'),
              ),
              Tab(
                child: Text('Packages'),
              ),
            ]),
          ),
          body: TabBarView(children: [
            Card(
              color: Colors.yellow,
              child: Text("Home"),
            ),
            Card(
              color: Colors.orange,
              child: Text("Channel Numbers"),
            ),
            Card(
              color: Colors.lightGreen,
              child: Text("Packages"),
            ),
          ]),
        ),
      ),
    );
  }
}
