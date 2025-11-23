import 'package:flutter/material.dart';

import '../../../app/theme.dart';
import 'shaded_container.dart';

class Button extends StatefulWidget {
  const Button.primary({
    super.key,
    this.width,
    this.onPressed,
    required this.child,
  }) : color = LingoColors.primaryContainer;

  const Button.secondary({
    super.key,
    this.width,
    this.onPressed,
    required this.child,
  }) : color = LingoColors.secondary;

  final Color color;
  final double? width;
  final VoidCallback? onPressed;
  final Widget child;

  @override
  State<Button> createState() => _ButtonState();
}

class _ButtonState extends State<Button> {
  bool _isPressed = false;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: widget.width,
      child: GestureDetector(
        onTap: widget.onPressed,
        onTapDown: (details) => setState(() {
          _isPressed = true;
        }),
        onTapUp: (details) => setState(() {
          _isPressed = false;
        }),
        onTapCancel: () => setState(() {
          _isPressed = false;
        }),
        child: Transform.translate(
          offset: Offset(0, _isPressed ? 4 : 0),
          child: ShadedContainer(
            padding: EdgeInsets.symmetric(horizontal: 32, vertical: 16),
            elevation: _isPressed ? 0 : 4,
            child: DefaultTextStyle.merge(
              style: TextStyle(
                color: LingoColors.onPrimaryContainer,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
              child: widget.child,
            ),
          ),
        ),
      ),
    );
  }
}
