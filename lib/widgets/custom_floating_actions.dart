import 'package:flutter/material.dart';

class CustomFloatingActions extends StatelessWidget {

  final Function increaseFn;
  final Function decreaseFn;
  final Function resetFn;

  const CustomFloatingActions({
    Key? key, 
    required this.increaseFn, 
    required this.decreaseFn, 
    required this.resetFn,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children:  <Widget>[
        FloatingActionButton(
          onPressed: () => decreaseFn(),
          child: const Icon(Icons.exposure_minus_1_outlined),
        ),

        FloatingActionButton(
          onPressed: () => resetFn(),
          child: const Icon(Icons.exposure_outlined),
        ),
        
        FloatingActionButton(
          onPressed: () => increaseFn(),
          child: const Icon(Icons.exposure_plus_1_outlined),
        ),
      ]
    );
  }
}
