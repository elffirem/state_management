import 'package:state_management/service/riverpod_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class LightSwitchPageRiverpod extends ConsumerWidget {
  const LightSwitchPageRiverpod({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isLightOn = ref.watch(lightSwitchProvider);

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 215, 136, 170),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 215, 136, 170),
        title: const Padding(
          padding: EdgeInsets.only(top: 32, right: 40),
          child: Center(
            child: Text(
              'Light Switch with Riverpod',
              style: TextStyle(
                fontStyle: FontStyle.italic,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              isLightOn ? Icons.lightbulb : Icons.lightbulb_outline,
              size: 100,
              color: isLightOn ? Colors.yellow : Colors.grey,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                ref.read(lightSwitchProvider.notifier).state = !isLightOn;
              },
              child: Text(isLightOn ? 'Turn Off' : 'Turn On'),
            ),
          ],
        ),
      ),
    );
  }
}
