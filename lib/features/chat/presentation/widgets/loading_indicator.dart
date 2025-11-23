import 'package:flutter/material.dart';

class LoadingIndicator extends StatelessWidget {
  const LoadingIndicator({
    super.key,
    this.color,
    this.size = 24,
  });

  final Color? color;
  final double size;

  @override
  Widget build(BuildContext context) {
    return SizedBox.square(
      dimension: 24,
      child: Image.asset(
        "assets/icons/loading.gif",
        color: color,
      ),
    );
  }
}
