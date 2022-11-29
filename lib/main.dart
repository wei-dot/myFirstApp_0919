import 'package:flutter/material.dart';
import 'package:myflutter/animate1.dart';

void main() {
  var app = const MaterialApp(
    debugShowCheckedModeBanner: false,
    title: '我的第一個flutter App',
    // home: MyStatefulWidget(),
    home: Animate1Widget(),
  );

  runApp(app);
  // runApp(const MyApp());
}
