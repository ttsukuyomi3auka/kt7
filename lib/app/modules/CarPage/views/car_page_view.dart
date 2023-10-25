import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/car_page_controller.dart';

class CarPageView extends GetView<CarPageController> {
  const CarPageView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              controller.curCar.toString(),
              style: TextStyle(fontSize: 20),
            ),
            const Text("Дизайн не важен! ВАЖНО КТО ТЫ ЕСТЬ!"),
            const SizedBox(
              height: 100,
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15))),
                onPressed: () => Get.back(),
                child: const Text("Вернуться"))
          ],
        ),
      ),
    );
  }
}
