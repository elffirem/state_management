import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get/get.dart';
import 'views/light_switch_page_riverpod.dart';
import 'views/light_switch_page_getx.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      title: 'Flutter State Management',
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 224, 215, 128),
      appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 224, 215, 128),
        title: const Padding(
          padding: EdgeInsets.only(top: 32.0),
          child: Text(
            'State Management Example',
            style: TextStyle(
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                // Navigating to Riverpod Example Page using Navigator
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const LightSwitchPageRiverpod(),
                  ),
                );
              },
              child: const Text('Go to Riverpod Example'),
            ),
            const SizedBox(height: 20), // Adding space between buttons
            ElevatedButton(
              onPressed: () {
                // Navigating to GetX Example Page using Get.to
                Get.to(() => LightSwitchPageGetX());
              },
              child: const Text('Go to GetX Example'),
            ),
          ],
        ),
      ),
    );
  }
}
