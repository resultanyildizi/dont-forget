import 'package:flutter/material.dart';
import '../predefined_values/colors.dart';

class MySwitch extends StatefulWidget {
  final Function() onTap;
  final bool toggleValue;

  const MySwitch({
    Key key,
    @required this.onTap,
    @required this.toggleValue,
  }) : super(key: key);

  @override
  _MySwitchState createState() => _MySwitchState();
}

class _MySwitchState extends State<MySwitch> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: AnimatedContainer(
          padding: const EdgeInsets.all(3.0),
          duration: const Duration(milliseconds: 500),
          height: 30.0,
          width: 60.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30.0),
            color: widget.toggleValue ? switchBlue : switchRed,
          ),
          child: Stack(
            children: [
              AnimatedAlign(
                alignment: widget.toggleValue
                    ? Alignment.centerLeft
                    : Alignment.centerRight,
                duration: const Duration(milliseconds: 500),
                child: widget.toggleValue
                    ? Padding(
                        padding: const EdgeInsets.only(left: 5.0),
                        child: buildText('Yes'),
                      )
                    : Padding(
                        padding: const EdgeInsets.only(right: 5.0),
                        child: buildText('No'),
                      ),
              ),
              AnimatedAlign(
                alignment: widget.toggleValue
                    ? Alignment.centerRight
                    : Alignment.centerLeft,
                duration: const Duration(milliseconds: 500),
                child: const Circle(),
              ),
            ],
          )),
    );
  }

  Widget buildText(String text, {double left, double right}) {
    return Text(
      text,
      style: const TextStyle(
        fontFamily: 'Karla',
        color: Colors.white,
        fontSize: 14.0,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}

class Circle extends StatelessWidget {
  const Circle({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PhysicalModel(
      color: Colors.grey,
      shape: BoxShape.circle,
      elevation: 4.0,
      child: Container(
        width: 24,
        height: 24,
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.white,
        ),
      ),
    );
  }
}
