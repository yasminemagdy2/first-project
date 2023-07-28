import 'package:flutter/cupertino.dart';

class MyCustomButtonState extends StatefulWidget {
  final String label;
  final void Function()? onPressed;
  const MyCustomButtonState(
      {super.key, required this.label, required this.onPressed});

  @override
  State<MyCustomButtonState> createState() => _MyCustomButtonStateState();
}

class _MyCustomButtonStateState extends State<MyCustomButtonState> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: CupertinoButton(
        onPressed: widget.onPressed,
        child: Text(
          widget.label,
        ),
      ),
    );
  }
}
