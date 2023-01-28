import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {

    int counter = 10;

    const textStyle = TextStyle(
      fontSize: 30,
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
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
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          counter++;
          print('click');
          print(counter);
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
