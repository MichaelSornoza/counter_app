import 'package:counter_app/widgets/custom_floating_actions.dart';
import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {

  int counter = 10;
  
  void increase() {
    setState(() => counter++);
  }

  void decrease() {
    setState(() => counter--);
  }

  void reset() {
    setState(() => counter = 0);
  }

  @override
  Widget build(BuildContext context) {

    const textStyle = TextStyle(
      fontSize: 30,
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter Screen'),
        elevation: 0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('Clicks Counter', style: textStyle),
            Text('$counter', style: textStyle),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: CustomFloatingActions(
        increaseFn: increase, 
        decreaseFn: decrease,
        resetFn: reset,
      )
    );
  }
}