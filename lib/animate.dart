import 'package:flutter/material.dart';

class AnimateWidget extends StatefulWidget {
  const AnimateWidget({super.key});

  @override
  State<AnimateWidget> createState() => _AnimateState();
}

class _AnimateState extends State<AnimateWidget> {
  bool selected = false;
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
      body: Center(
        child: AnimatedContainer(
          duration: const Duration(seconds: 1),
          width: selected ? 200.0 : 100.0,
          height: selected ? 100.0 : 200.0,
          color: selected ? Colors.red : Colors.blue,

          child: const FlutterLogo(size: 75),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            selected = !selected;
          });
        },
        tooltip: '切換',
        child: const Icon(Icons.flip),
      ),
    );
  }
}
