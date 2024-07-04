import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

// Define a Counter class that extends ChangeNotifier
class Counter with ChangeNotifier {
  int _count = 0;

  int get count => _count;

  void increment() {
    _count++;
    notifyListeners(); // Notify listeners about the change
  }
}

// Define the ProviderExample widget
class ProviderExample extends StatelessWidget {
  const ProviderExample({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Counter(), // Provide the Counter instance
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Provider Example'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text('NOT WORKING. IGNORE THIS'),
              // Use Consumer to listen to changes in the Counter
              Consumer<Counter>(
                builder: (context, counter, child) {
                  return Text(
                    '${counter.count}',
                    style: Theme.of(context).textTheme.headlineMedium,
                  );
                },
              ),
              ElevatedButton(
                onPressed: () {
                  // Use context.read to avoid rebuilding the widget tree
                  context.read<Counter>().increment();
                },
                child: const Text('Increment'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
