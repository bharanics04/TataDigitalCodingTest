import 'package:flutter/material.dart';

class LongStringWidget extends StatelessWidget {
  const LongStringWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: const Text("Chips")),
    body: Wrap(children: const [
      Chip(label: Text("I",style: TextStyle(fontSize: 14),)),
      Chip(label: Text("am",style: TextStyle(fontSize: 14),)),
      Chip(label: Text("looking",style: TextStyle(fontSize: 14),)),
      Chip(label: Text("for",style: TextStyle(fontSize: 14),)),
      Chip(label: Text("job",style: TextStyle(fontSize: 14),)),
      Chip(label: Text("and",style: TextStyle(fontSize: 14),)),
      Chip(label: Text("I",style: TextStyle(fontSize: 14),)),
      Chip(label: Text("need",style: TextStyle(fontSize: 14),)),
      Chip(label: Text("that",style: TextStyle(fontSize: 14),)),
    ]),);
  }
}
