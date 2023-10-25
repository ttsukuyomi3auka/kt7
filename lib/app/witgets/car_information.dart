import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kt7/app/models/car/car.dart';
import 'package:kt7/app/routes/app_pages.dart';

class CarWidget extends StatelessWidget {
  final Car car;
  final int index;
  const CarWidget({super.key, required this.car, required this.index});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      color: const Color.fromARGB(255, 149, 216, 151),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: ListTile(
        onTap: () => Get.toNamed(Routes.CAR_PAGE, arguments: car),
        isThreeLine: true,
        title: Text(car.brand),
        subtitle: Text("${car.model} price: ${car.price}"),
        leading: Column(
          children: [
            const Icon(
              Icons.star,
              color: Colors.orange,
            ),
            const SizedBox(height: 5),
            Text(index.toString())
          ],
        ),
      ),
    );
  }
}
