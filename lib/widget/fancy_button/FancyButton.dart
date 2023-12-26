import 'package:flutter/cupertino.dart';
import 'FancyButtonState.dart';

class FancyButton extends StatefulWidget {
  const FancyButton({
    Key? key,
    required this.child,
    required this.size,
    required this.color,
    this.duration = const Duration(milliseconds: 160),
    this.onPressed,
  }) : super(key: key);
  final Widget child;
  final Color color;
  final Duration duration;
  final VoidCallback? onPressed;
  final double size;
  @override
  FancyButtonState createState() => FancyButtonState();
}
