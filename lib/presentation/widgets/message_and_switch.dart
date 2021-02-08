import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../application/entry/entry_bloc.dart';
import 'message_displayer.dart';
import 'my_switch.dart';

class MessageAndSwitch extends StatelessWidget {
  final String message;
  final bool value;
  const MessageAndSwitch({
    Key key,
    @required this.message,
    @required this.value,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        MessageDisplayer(
          message: message,
        ),
        MySwitch(
          onTap: () {
            context.read<EntryBloc>().add(
                  EntryEvent.updateCache(
                    updatedAt: DateTime.now(),
                  ),
                );
          },
          toggleValue: value,
        )
      ],
    );
  }
}
