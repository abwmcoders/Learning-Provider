import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => AppData(),)
      ],
      child: MaterialApp(
        theme: ThemeData(
          fontFamily: "PlayfairDisplay",
          primarySwatch: Colors.blue,
        ),
        home: const MainPage(),
      ),
    );
  }
}

class MainPage extends StatelessWidget {
  const MainPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
        // ignore: avoid_print
    print("building main page");
    return Scaffold(
      appBar: AppBar(
        title: Consumer<AppData>(
          builder: (context, value, child) {
            return Text(value.name);
            // return Text(context.watch<AppData>().name);
          }
        ),
        // title: Text(Provider.of<AppData>(context).name),
      ),
      body: const SecondPage(),
    );
  }
}


class SecondPage extends StatelessWidget {
  const SecondPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
        // ignore: avoid_print
    print("building page2");
    // ignore: avoid_unnecessary_containers
    return Container(
      child: const ThirdPage(),
    );
  }
}


class ThirdPage extends StatelessWidget {
  const ThirdPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
        // ignore: avoid_print
    print("building page3");
    // ignore: avoid_unnecessary_containers
    return Container(
      child: const FourthPage(),
    );
  }
}

class FourthPage extends StatelessWidget {
  const FourthPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: avoid_print
    print("building page4");
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Consumer<AppData>(builder: (context, value, child) {
            return Text(value.name, style: const TextStyle(
              color: Colors.amber,
              fontFamily: "PlayfairDisplay",
              fontSize: 20,
            ),);
          }),
          // Text(context.watch<AppData>().name),
      //  Text(Provider.of<AppData>(context).name),
        ElevatedButton(
          onPressed: (){
            context.read<AppData>().setName("Peter Jackobson");
            // Provider.of<AppData>(context, listen: false).setName("Malik Berry");
          }, 
          child: const Text("Change Data"))
        ],
      ),
    );
  }
}


class AppData extends ChangeNotifier {
  String _name = "Kalle Hallden";


  String get name => _name;

  setName(String changeName) {
    _name = changeName;
    notifyListeners();
  }
}

