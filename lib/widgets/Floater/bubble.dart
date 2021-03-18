import 'package:flutter/material.dart';

class Bubble extends AnimatedWidget {
  final AnimationController _controller;

  Bubble({@required controller})
      : _controller = controller,
        super(listenable: controller);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black, width: 5),
      ),
      child: Stack(
        children: [
          Positioned(
            top: 100,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.purple,
                shape: BoxShape.circle,
              ),
              height: _controller.value * 100,
            ),
          ),
        ],
      ),
    );
  }
}
