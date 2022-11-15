import 'package:flutter/material.dart';
import 'package:myflutter/popmenu.dart';

void main() {
  var app = const MaterialApp(
    debugShowCheckedModeBanner: false,
    title: '我的第一個flutter App',
    home: MyStatefulWidget(),
  );

  runApp(app);
  // runApp(const MyApp());
}
