import 'package:flutter/material.dart';
import 'dart:math' as math;

class AnimateWidget extends StatefulWidget {
  const AnimateWidget({super.key});

  @override
  State<AnimateWidget> createState() => _AnimateState();
}

class _AnimateState extends State<AnimateWidget> {
  bool selected = false;
  int value=0;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('動畫測試'),
        centerTitle: true,
        backgroundColor: Colors.blue.shade900,
      ),
      body: GestureDetector(
        onTap: () {
          setState(() {
            selected = !selected;
          });
        },
        child: Center(
          child: SizedBox(
            width: double.maxFinite,
            height: double.maxFinite,
            child: AnimatedAlign(
              alignment: selected ? Alignment.topCenter : Alignment.bottomCenter,
              duration: const Duration(seconds: 1),
              curve: Curves.fastOutSlowIn,
              child: Transform.rotate(
                angle: value * math.pi / 180,
                child: const IconButton(
                  icon: Icon(
                    Icons.flight,
                    size: 50.0,
                    color: Colors.blue,
                  ),
                  onPressed: null,
                ),
              ),
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            if(selected){
              value=180;
            }else{
              value=0;
            }
            selected = !selected;
          });
        },
        tooltip: '切換',
        child: const Icon(Icons.flip),
      ),
    );
  }
}
