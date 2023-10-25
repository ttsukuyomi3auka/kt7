import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:kt7/app/witgets/car_information.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Obx(() => Text("Status: ${controller.status.value.name}")),
              if (controller.status.value.name == 'loading')
                const CircularProgressIndicator()
              else
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15))),
                    onPressed: () => controller.getData(),
                    child: const Text(
                      "Обновить",
                    )),
              const SizedBox(height: 20),
              Obx(() => ListView.builder(
                    primary: false,
                    shrinkWrap: true,
                    itemCount: controller.cars.length,
                    itemBuilder: (context, index) {
                      return CarWidget(
                          car: controller.cars[index], index: index + 1);
                    },
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
