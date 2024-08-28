import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/light_switch_controller.dart';

class LightSwitchPageGetX extends StatelessWidget {
  LightSwitchPageGetX({super.key});

  final LightSwitchController controller = Get.put(LightSwitchController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 158, 228, 222),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 158, 228, 222),
        title: const Padding(
          padding: EdgeInsets.only(top: 32, right: 40),
          child: Center(
            child: Text(
              'Light Switch with GetX',
              style: TextStyle(
                fontStyle: FontStyle.italic,
                color: Color.fromARGB(255, 140, 81, 163),
              ),
            ),
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(
              () => Icon(
                controller.isLightOn.value
                    ? Icons.lightbulb
                    : Icons.lightbulb_outline,
                size: 100,
                color: controller.isLightOn.value ? Colors.yellow : Colors.grey,
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: controller.toggleLight,
              child: Obx(() =>
                  Text(controller.isLightOn.value ? 'Turn Off' : 'Turn On')),
            ),
          ],
        ),
      ),
    );
  }
}
