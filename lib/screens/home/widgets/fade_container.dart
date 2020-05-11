import 'package:flutter/material.dart';

class FadeContainer extends StatelessWidget {

  final Animation<Color> fadeAnimation;

  FadeContainer({this.fadeAnimation});

  @override
  Widget build(BuildContext context) {
    return Hero(//esse widget podea ser passado de uma tela para a outra
      tag: "fade",
      child: Container(
        decoration: BoxDecoration(
          color: fadeAnimation.value
        ),
      ),
    );
  }
}
