import 'package:flutter/material.dart';

class NextButtonWidget extends StatelessWidget {
  final String label;

  const NextButtonWidget({
    Key? key,
    required this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      child: Text(label),
    );
  }
}
