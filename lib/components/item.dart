import 'package:flutter/material.dart';
import 'package:tune_app/models/tune_model.dart';

// ignore: must_be_immutable
class Item extends StatelessWidget {
  const Item({super.key, required this.tune});
  final TuneModel tune;
  // Function() onTap;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          tune.playSound();
        },
        child: Container(
          color: tune.color,
          width: double.infinity,
        ),
      ),
    );
  }
}
