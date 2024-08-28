import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tune_app/components/item.dart';
import 'package:tune_app/main.dart';
import 'package:tune_app/models/tune_model.dart';

class TuneView extends StatelessWidget {
  const TuneView({super.key});
  final List<TuneModel> tunes = const [
    TuneModel(color: Color(0xffFE4039), sound: ''),
    TuneModel(color: Color(0xffFD982B), sound: ''),
    TuneModel(color: Color(0xffFDEB57), sound: ''),
    TuneModel(color: Color(0xff33AF57), sound: ''),
    TuneModel(color: Color(0xff0097ED), sound: ''),
    TuneModel(color: Color(0xffA227AC), sound: ''),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0xff243139),
        centerTitle: true,
        title: const Text(
          'Flutter Tune',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Column(
        children: tunes
            .map((e) => Item(
                  tune: e,
                ))
            .toList(),
      ),
    );
  }
  // List<Item> getTune(List<Color> colors){
  //   List<Item> listItems=[];
  //  for (var element in colors) {
  //    listItems.add(Item(color: element));
  //  }
  //  return listItems;
  // }
}
