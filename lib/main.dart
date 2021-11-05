import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {

    final _dbRef = FirebaseDatabase.instance.reference();

    return Scaffold(
      appBar: AppBar(

        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Flutter Firebase Example',
              style: TextStyle(fontSize: 24),
            ),
            ElevatedButton(onPressed: () async {
              var tableRef = _dbRef.child("SampleData");
              await tableRef.child("3").set(
                  {
                    'Id': 3,
                    'Name': "Flutter Tutorial",
                    'Web' : "https://fluttertutorial.net",
                  }
              );
              tableRef.push();
              print("Push called");

            }, child: const Text("Save Data")),
            ElevatedButton(onPressed: () async {
              var tableRef = _dbRef.child("SampleData");
              await tableRef.child("3").update(
                  {
                    'Id': 3,
                    'Name': "Flutter Tutorial (Updated)",
                    'Web' : "https://fluttertutorial.net",
                  }
              );
              tableRef.push();
            }, child: const Text("Update Data")),
            ElevatedButton(onPressed: () async {
               _dbRef.once().then((DataSnapshot snapshot) {
                 print("Data: ${snapshot.value}");
               });

            }, child: const Text("Load Data")),
            ElevatedButton(onPressed: () async {
              var tableRef = _dbRef.child("SampleData");
              await tableRef.child("2").remove();
            }, child: const Text("Delete Data")),
          ],
        ),
      ),
    );
  }
}
