import 'package:flutter/material.dart';
import '../predefined_values/colors.dart';

class MessageDisplayer extends StatelessWidget {
  final String message;
  const MessageDisplayer({
    Key key,
    @required this.message,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      message,
      style: const TextStyle(
        color: textBlack,
        fontSize: 56,
        fontFamily: 'Martel',
        fontWeight: FontWeight.w800,
      ),
    );
  }
}
