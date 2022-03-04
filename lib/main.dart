import 'package:flutter/material.dart';

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
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: Center(
        child: TextButton(
          child: Text("次の画面へ"),
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => MyNextPage()));
          },
        ),
      ),
    );
  }
}

class MyNextPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Next Page'),
      ),
      body: Center(
        child: TextButton(
          child: Text("前の画面に戻る"),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}
