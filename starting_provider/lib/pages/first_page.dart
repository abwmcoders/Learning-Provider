import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:starting_provider/providers/counter_provider.dart';

class MyFirstPage extends StatelessWidget {
  const MyFirstPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        title: const Text("Counter app"),
        centerTitle: true,
        // backgroundColor: Colors.red,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
           Text("You have push this button this many times:  ${context.watch<Counter>().count}",
           style: Theme.of(context).textTheme.bodyText2,
           ),
           const Count(),
           const SizedBox(height: 30),
           ElevatedButton(
             onPressed: () {
               Navigator.pushNamed(context, "/second");
             }, 
             child: const Text ("Next Page"),
             style: ElevatedButton.styleFrom(primary: Colors.redAccent),
             )
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          FloatingActionButton(
            onPressed: () => context.read<Counter>().increementCounter(),
            backgroundColor: Colors.green,
            child: const Icon(Icons.add, color: Colors.white,),
            ),
          FloatingActionButton(
            onPressed: () => context.read<Counter>().decreementCounter(),
            backgroundColor: Colors.redAccent,
            child: const Icon(Icons.remove, color: Colors.white,),
          ),
        ],
      ),
    );
  }
}

class Count extends StatelessWidget {
  const Count({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      "${context.watch<Counter>().count}",
      key: const Key("CounterState"),
      style: Theme.of(context).textTheme.headline1?.copyWith(color: Colors.amber),
    );
  }
}