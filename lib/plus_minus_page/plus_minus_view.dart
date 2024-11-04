import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/plus_minus_bloc.dart';
import 'bloc/plus_minus_event.dart';

class PlusMinusView extends StatelessWidget {
  const PlusMinusView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Bloc demo'),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                'You have pushed the button this many times:',
              ),
              // BlocConsumer<PlusMinusBloc, PlusMinusState>(
              //   listenWhen: (previous, current) => previous.value + current.value>10,
              //   listener: (context, state) {
              //     final snackBar = SnackBar(
              //       content: Text('Value is ${state.value}'),
              //       duration: const Duration(seconds: 1),
              //     );
              //     ScaffoldMessenger.of(context).showSnackBar(snackBar);
              //   },
              //   buildWhen: (previous, current) => previous.value + current.value >20,
              //   builder: (context, state) {
              //     log('Value is ${state.value}');
              //     return Text(
              //       '${state.value}',
              //       style: Theme.of(context).textTheme.bodyMedium,
              //     );
              //   },
              // ),
              Builder(
                  builder: (context) => Text(
                      context.watch<PlusMinusBloc>().state.value.toString())),
            ],
          ),
        ),
        floatingActionButton: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            FloatingActionButton(
              onPressed: () {
                context.read<PlusMinusBloc>().add(PlusEvent());
              },
              tooltip: 'Increment',
              child: const Icon(Icons.add),
            ),
            const SizedBox(height: 10),
            FloatingActionButton(
              onPressed: () {
                context.read<PlusMinusBloc>().add(MinusEvent());
              },
              tooltip: 'Decrement',
              child: const Icon(Icons.remove),
            ),
          ],
        ),
      ),
    );
  }
}
