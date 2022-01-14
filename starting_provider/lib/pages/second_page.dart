import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:starting_provider/providers/shooping_card.dart';


class SecondPage extends StatelessWidget {
  const SecondPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text("Provider Example App ${context.watch<ShooppingCart>().count}"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("${context.watch<ShooppingCart>().count}", style: Theme.of(context).textTheme.headline2?.copyWith(color: Colors.amber),),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50.0, vertical: 30),
              child: Text("${context.watch<ShooppingCart>().cart}"),
            ),
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          FloatingActionButton(
            onPressed: () => context.read<ShooppingCart>().addItem("Boxers"),
            tooltip: "AddItem",
            child: const Icon(Icons.add, color: Colors.white,),
            backgroundColor: Colors.green,
          ),
          FloatingActionButton(
            onPressed: () => context.read<ShooppingCart>().removeItem("Boxers"),
            tooltip: "RemoveItem",
            child: const Icon(Icons.remove, color: Colors.white,),
            backgroundColor: Colors.red,
          ),
        ],
      ),
    );
  }
}