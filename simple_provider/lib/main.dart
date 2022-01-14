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
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {

  const MainPage({ Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  String data = "Kalle halden";
  void changeState(String changedData) {
    setState(() {
      data = changedData;
    });
  }

  @override
  Widget build(BuildContext context) {
        // ignore: avoid_print
    print("building main page");
    return Scaffold(
      appBar: AppBar(
        title: Text(data),
      ),
      body: SecondPage(data: data, changeValue: changeState,),
    );
  }
}


class SecondPage extends StatelessWidget {
  final String data;
  final Function(String) changeValue;
  const SecondPage({ Key? key ,required this.data, required this.changeValue}) : super(key: key);

  @override
  Widget build(BuildContext context) {
        // ignore: avoid_print
    print("building page2");
    // ignore: avoid_unnecessary_containers
    return Container(
      child: ThirdPage(data: data, changeValue: changeValue,),
    );
  }
}


class ThirdPage extends StatelessWidget {
  final String data;
  final Function(String) changeValue;
  const ThirdPage({ Key? key, required this.data, required this.changeValue}) : super(key: key);

  @override
  Widget build(BuildContext context) {
        // ignore: avoid_print
    print("building page3");
    // ignore: avoid_unnecessary_containers
    return Container(
      child: FourthPage(data: data, changeValue: changeValue,),
    );
  }
}

class FourthPage extends StatelessWidget {
  final String data;
  final Function(String) changeValue;
  const FourthPage({ Key? key, required this.data, required this.changeValue }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: avoid_print
    print("building page4");
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
        Text(data),
        const SizedBox(height: 15),
        ElevatedButton(
          onPressed: (){
            changeValue("Malik bery");
          }, 
          child: const Text("Change Data"))
        ],
      ),
    );
  }
}