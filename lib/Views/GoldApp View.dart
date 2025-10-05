import 'package:classico/Components/CustomButton.dart';
import 'package:classico/Components/CustomTextFormField.dart';
import 'package:classico/Controllers/GoldControllers.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';

class GoldApp extends StatefulWidget {
  const GoldApp({super.key});

  @override
  State<GoldApp> createState() => _GoldAppState();
}

class _GoldAppState extends State<GoldApp> {
  @override
  Widget build(BuildContext context) {
    GoldContrllers goldController = Get.put(GoldContrllers());
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          goldController.Clear();
        },
        elevation: 10,
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
        child: Icon(Icons.refresh, color: Colors.blue),
      ),
      backgroundColor: Colors.blue,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "Gold App",
          style: GoogleFonts.poppins(
            color: Colors.blue,
            fontWeight: FontWeight.bold,
            fontSize: 35,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          children: [
            // SizedBox(height: 30,),
            Customtextformfield(
              hintText: 'Tola Price',
              controller: goldController.tolaPriceController,
              icon: Icons.monetization_on,
            ),
            SizedBox(height: 10),
            Customtextformfield(
              hintText: 'Tola Quntity',
              controller: goldController.tolaQuantityController,
              icon: Icons.onetwothree_outlined,
            ),
            SizedBox(height: 10),
            Customtextformfield(
              hintText: 'Gram Quantity',
              controller: goldController.tolaGramQuantity,
              icon: Icons.scale,
            ),
            SizedBox(height: 10),
            Customtextformfield(
              hintText: 'Ratti Quantity',
              controller: goldController.tolaRatttQuantity,
              icon: Icons.monitor_weight,
            ),
            SizedBox(height: 10),
            Customtextformfield(
              hintText: 'Points Quantity',
              controller: goldController.tolaPointsQuantity,
              icon: Icons.calculate,
            ),
            SizedBox(height: 20),
            Custombutton(
              buttonText: 'Calculate',
              textColor: Colors.blue,
              textFontWeight: FontWeight.w500,
              textSize: 25,
              onTap: () {
                goldController.Calculate();
              },
            ),
            SizedBox(height: 10),
            Obx(
              () => Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Rs = ",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    goldController.result.value.toString(),
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 25,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
