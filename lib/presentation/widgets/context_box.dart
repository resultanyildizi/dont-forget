import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../application/entry/entry_bloc.dart';
import '../../injectable.dart';
import 'message_and_switch.dart';

class ContentBox extends StatelessWidget {
  const ContentBox({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<EntryBloc>(
      create: (context) =>
          g<EntryBloc>()..add(const EntryEvent.readFromCache()),
      child: PhysicalModel(
        color: Colors.grey,
        borderRadius: BorderRadius.circular(16.0),
        elevation: 6.0,
        child: Container(
          width: 310,
          height: 185,
          padding: const EdgeInsets.symmetric(vertical: 20.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16.0),
            color: Colors.white,
          ),
          child: BlocBuilder<EntryBloc, EntryState>(
            builder: (context, state) {
              return state.map(
                initial: (_) => const MessageAndSwitch(
                  message: 'Initial',
                  value: false,
                ),
                loading: (_) => const MessageAndSwitch(
                  message: '...',
                  value: false,
                ),
                loaded: (s) => MessageAndSwitch(
                  message: s.entry.timeString,
                  value: s.entry.value,
                ),
                error: (_) => const MessageAndSwitch(
                  message: 'Hi',
                  value: false,
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
