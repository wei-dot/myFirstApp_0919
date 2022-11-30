import 'package:flutter/material.dart';
import 'package:myflutter/animate.dart';
import 'package:myflutter/listview.dart';

void main() {
  var app = const MaterialApp(
    debugShowCheckedModeBanner: false,
    title: '我的第一個flutter App',
    // home: MyStatefulWidget(),
    home: ListViewWidget(),
    // home: ListViewWidget(),
  );

  runApp(app);
  // runApp(const MyApp());
}
