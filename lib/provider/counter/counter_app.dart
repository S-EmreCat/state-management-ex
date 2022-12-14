import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'provider_provider.dart';

class CounterProviderView extends StatelessWidget {
  const CounterProviderView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter Provider Counter"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Consumer<CounterNotifier>(
              builder: (context, value, child) => Text(
                '${value.counter}',
                style: Theme.of(context).textTheme.headline4,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Consumer<CounterNotifier>(
                  builder: (context, value, child) => ElevatedButton(
                    onPressed: () {
                      value.remove();
                    },
                    child: const Text("Remove"),
                  ),
                ),
                // consumer ile yapım
                Consumer<CounterNotifier>(
                  builder: (context, value, child) => ElevatedButton(
                    onPressed: () {
                      value.add();
                    },
                    child: const Text("Add"),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
