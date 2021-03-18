import 'package:flutter/material.dart';

import 'bubble.dart';

class Floater extends StatefulWidget {
  @override
  FloaterState createState() => FloaterState();
}

class FloaterState extends State<Floater> with TickerProviderStateMixin {
  AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    )..repeat();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Bubble(
      controller: _controller,
    );
  }
}
