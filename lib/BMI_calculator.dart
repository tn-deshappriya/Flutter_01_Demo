import 'package:demo/constants.dart';
import 'package:flutter/material.dart';

class BMICalculatorPage extends StatefulWidget {
  const new({super.key});

  @override
  State<BMICalculatorPage> createState() => BMICalculatorPageState();
}

class BMICalculatorPageState extends State<BMICalculatorPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("BMI Calculator"),
        backgroundColor: kBackgroundColor,
        foregroundColor: kActiveTextColor,
      ),
      backgroundColor: kBackgroundColor,
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(32),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        flex: 10,
                        child: Container(
                          decoration: kTileBorderDecoration,
                          padding: const EdgeInsets.all(20),
                          child: const Column(
                            children: [
                              Icon(
                                Icons.male,
                                size: 50,
                                color: kActiveTextColor,
                              ),
                              Text(
                                "Male",
                                style: TextStyle(
                                  fontSize: 24,
                                  color: kActiveTextColor,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Spacer(),
                      Expanded(
                        flex: 10,
                        child: Container(
                          decoration: kTileBorderDecoration,
                          padding: const EdgeInsets.all(20),
                          child: const Column(
                            children: [
                              Icon(
                                Icons.female,
                                size: 50,
                                color: kActiveTextColor,
                              ),
                              Text(
                                "Female",
                                style: TextStyle(
                                  fontSize: 24,
                                  color: kActiveTextColor,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 25),
                  Container(
                    decoration: kTileBorderDecoration,
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      children: [
                        const Text(
                          "Height",
                          style: TextStyle(color: kActiveTextColor),
                        ),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "183",
                              style: TextStyle(
                                color: kActiveTextColor,
                                fontSize: 50,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              "cm",
                              style: TextStyle(
                                fontSize: 20,
                                color: kActiveTextColor,
                              ),
                            ),
                          ],
                        ),
                        Slider(
                          thumbColor: kTileButtonColor,
                          activeColor: Colors.white,
                          min: 80,
                          max: 200,
                          value: 183,
                          onChanged: (value) {},
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 25),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Container(
                          decoration: kTileBorderDecoration,

                          padding: const EdgeInsets.all(20),
                          child: Column(
                            children: [
                              const Text(
                                "Weight",
                                style: TextStyle(color: kActiveTextColor),
                              ),
                              const Text(
                                "74",
                                style: TextStyle(
                                  fontSize: 50,
                                  color: kActiveTextColor,
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  FloatingActionButton(
                                    backgroundColor: kScaleButtonColor,
                                    elevation: 0,
                                    shape: ShapeBorder.lerp(
                                      const CircleBorder(),
                                      const CircleBorder(),
                                      0.5,
                                    ),
                                    onPressed: () {},
                                    child: const Icon(
                                      Icons.remove,
                                      color: kActiveTextColor,
                                    ),
                                  ),
                                  const SizedBox(width: 10),
                                  FloatingActionButton(
                                    backgroundColor: kScaleButtonColor,
                                    elevation: 0,
                                    shape: ShapeBorder.lerp(
                                      const CircleBorder(),
                                      const CircleBorder(),
                                      0.5,
                                    ),
                                    onPressed: () {},
                                    child: Icon(
                                      Icons.add,
                                      color: kActiveTextColor,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(width: 2),
                      Expanded(
                        child: Container(
                          decoration: kTileBorderDecoration,
                          padding: EdgeInsets.all(20),
                          child: Column(
                            children: [
                              const Text(
                                "Age",
                                style: TextStyle(color: kActiveTextColor),
                              ),
                              const Text(
                                "19",
                                style: TextStyle(
                                  fontSize: 50,
                                  color: kActiveTextColor,
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  FloatingActionButton(
                                    backgroundColor: kScaleButtonColor,
                                    elevation: 0,
                                    shape: ShapeBorder.lerp(
                                      const CircleBorder(),
                                      const CircleBorder(),
                                      0.5,
                                    ),
                                    onPressed: () {},
                                    child: const Icon(
                                      Icons.remove,
                                      color: kActiveTextColor,
                                    ),
                                  ),
                                  const SizedBox(width: 10),
                                  FloatingActionButton(
                                    backgroundColor: kScaleButtonColor,
                                    elevation: 0,
                                    shape: ShapeBorder.lerp(
                                      const CircleBorder(),
                                      const CircleBorder(),
                                      0.5,
                                    ),
                                    onPressed: () {},
                                    child: const Icon(
                                      Icons.add,
                                      color: kActiveTextColor,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 25),
            Spacer(),
            Row(
              children: [
                Expanded(
                  child: TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: kTileButtonColor,
                      shape: const RoundedRectangleBorder(),
                      minimumSize: const Size(double.infinity, 80),
                    ),
                    onPressed: () {},
                    child: const Text(
                      "Calculate BMI",
                      style: TextStyle(fontSize: 20, color: kActiveTextColor),
                    ),
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
