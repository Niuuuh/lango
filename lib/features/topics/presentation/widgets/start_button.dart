import 'package:flutter/material.dart';

import '../../../../core/presentation/widgets/button.dart';

class StartButton extends StatelessWidget {
  const StartButton({
    super.key,
    this.onPressed,
  });

  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Button.secondary(
      onPressed: onPressed,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        spacing: 6,
        children: [
          Text('Start', style: TextStyle(fontSize: 24)),
          Icon(Icons.play_arrow_rounded, size: 30),
        ],
      ),
    );
  }
}
