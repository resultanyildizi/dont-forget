import 'package:flutter/material.dart';
import '../predefined_values/colors.dart';
import '../widgets/context_box.dart';

class EntryPage extends StatelessWidget {
  const EntryPage({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [backgroundOrange, backgroundPurple, backgroundBlue],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: const Center(
            child: ContentBox(),
          ),
        ),
      ),
    );
  }
}
