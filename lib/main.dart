import 'package:flutter/material.dart';
import 'package:tatadigitalcodingtest/src/view/news_list/news_list_view.dart';
import 'src/view/chips/long_string_widget.dart';

void main() {
  runApp(const MyApp());
}

String longOperationMethod(){
  var counting=0;
  for(var i=1;i<=1000000000;i++){
    counting=i;
  }
  return '$counting! times I print the value!';
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: const LongStringWidget(),
    );
  }
}

