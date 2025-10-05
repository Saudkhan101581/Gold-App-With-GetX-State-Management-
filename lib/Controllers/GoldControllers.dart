import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GoldContrllers extends GetxController {
  TextEditingController tolaPriceController = TextEditingController();
  TextEditingController tolaQuantityController = TextEditingController();
  TextEditingController tolaGramQuantity = TextEditingController();
  TextEditingController tolaRatttQuantity = TextEditingController();
  TextEditingController tolaPointsQuantity = TextEditingController();
  var result = 0.0.obs;
  var pricePerGram = 0.0.obs;
  var pricePerRatti = 0.0.obs;
  var pricePerPoint = 0.0.obs;

  Calculate() {
    if (tolaPriceController.text.isEmpty ||
        tolaQuantityController.text.isEmpty) {
      Get.snackbar(
        'Missing Input',
        'Please enter Tola Price and Quantity!',
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.redAccent.withOpacity(0.9),
        colorText: Colors.white,
        icon: const Icon(Icons.error, color: Colors.white),
        borderRadius: 12,
        margin: const EdgeInsets.all(10),
      );
      return;
    }
    double tolaPrice = double.tryParse(tolaPriceController.text) ?? 0.0;
    double tolaQuantity = double.tryParse(tolaQuantityController.text) ?? 0.0;
    double gramQuantity = double.tryParse(tolaGramQuantity.text) ?? 0.0;
    double rattiquantity = double.tryParse(tolaRatttQuantity.text) ?? 0.0;
    double pointsQuantity = double.tryParse(tolaPointsQuantity.text) ?? 0.0;
    pricePerGram.value = tolaPrice / 12;
    pricePerRatti.value = tolaPrice / 96;
    pricePerPoint.value = tolaPrice / 768;
    double totalTolaPrice = tolaPrice * tolaQuantity;
    double totalGramPrice = pricePerGram.value * gramQuantity;
    double totalRattiPrice = pricePerRatti.value * rattiquantity;
    double totalPointsPrice = pricePerPoint.value * pointsQuantity;
    result.value =
        totalTolaPrice + totalGramPrice + totalRattiPrice + totalPointsPrice;

    Get.snackbar(
      'Success',
      'Calculation completed successfully!',
      //snackPosition: SnackPosition.BOTTOM,
      backgroundColor: Colors.green.withOpacity(0.9),
      colorText: Colors.white,
      icon: const Icon(Icons.check_circle, color: Colors.white),
      borderRadius: 12,
      //margin: const EdgeInsets.all(10),
    );
  }

  Clear() {
    tolaPriceController.clear();
    tolaQuantityController.clear();
    tolaGramQuantity.clear();
    tolaRatttQuantity.clear();
    tolaPointsQuantity.clear();
    result.value = 0.0;

    Get.snackbar(
      'Cleared',
      'All Fields have been cleared.',
      backgroundColor: Colors.blueAccent.withOpacity(0.9),
      colorText: Colors.white,
      icon: Icon(Icons.refresh, color: Colors.white),
      borderRadius: 12,
      margin: EdgeInsets.all(10),
    );
  }
}
