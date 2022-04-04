import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    Key? key,
    required this.child,
    this.backgroundColor,
    required this.onPressed,
  }) : super(key: key);

  final Widget child;
  final Color? backgroundColor;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(backgroundColor),
        minimumSize: MaterialStateProperty.all(
          const Size(double.infinity, 48.0),
        ),
      ),
      onPressed: onPressed,
      child: child,
    );
  }
}
