import 'package:flutter/material.dart';

import '../../../app/theme.dart';
import 'bold.dart';

class Button extends StatefulWidget {
  const Button.primary({
    super.key,
    this.alignment = Alignment.center,
    this.onPressed,
    required this.child,
  }) : color = LingoColors.primaryContainer;

  const Button.secondary({
    super.key,
    this.alignment = Alignment.center,
    this.onPressed,
    required this.child,
  }) : color = LingoColors.secondary;

  final Color color;
  final Alignment alignment;
  final VoidCallback? onPressed;
  final Widget child;

  @override
  State<Button> createState() => _ButtonState();
}

class _ButtonState extends State<Button> {
  bool _isPressed = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
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
        child: DecoratedBox(
          decoration: ShapeDecoration(
            color: widget.color,
            shape: ContinuousRectangleBorder(
              borderRadius: BorderRadius.circular(40),
              side: BorderSide(
                width: 2,
                color: LingoColors.shadow,
              ),
            ),
            shadows: [
              BoxShadow(
                color: LingoColors.shadow,
                offset: Offset(0, _isPressed ? 0 : 4),
              ),
            ],
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 32, vertical: 16),
            child: Align(
              alignment: widget.alignment,
              child: DefaultTextStyle.merge(
                style: TextStyle(
                  color: LingoColors.onPrimaryContainer,
                  fontSize: 20,
                ),
                child: Bold(child: widget.child),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
