import 'package:demo/constants.dart';
import 'package:demo/gender_tile_widget.dart';
import 'package:flutter/material.dart';

class BMICalculatorPage extends StatefulWidget {
  const new({super.key});

  @override
  State<BMICalculatorPage> createState() => BMICalculatorPageState();
}

class BMICalculatorPageState extends State<BMICalculatorPage> {
  bool isMale = true;
  double height = 183;
  int weight = 74;
  int age = 30;
  double bmi = 0;

  double calculateBMI({required int weigth, required double height}) =>
      weight / ((height / 100) * (height / 100));

  Color getBMIColor(double bmi) {
    if (bmi < 18.5) {
      return Colors.blue;
    } else if (bmi < 25) {
      return Colors.green;
    } else if (bmi < 30) {
      return Colors.orange;
    } else {
      return Colors.red;
    }
  }

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
                        child: GenderTileWidget(
                          isMale: isMale,
                          text: "Male",
                          icon: Icons.male,
                          onTapTile: onTapTile,
                        ),
                      ),
                      Spacer(),
                      Expanded(
                        flex: 10,
                        child: GenderTileWidget(
                          isMale: !isMale,
                          text: "Female",
                          icon: Icons.female,
                          onTapTile: () {
                            isMale = false;
                            var bmiValue = calculateBMI(
                              weigth: weight,
                              height: height,
                            );
                            setState(() {
                              bmi = bmiValue;
                            });
                          },
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Container(
                    decoration: kTileBorderDecoration,
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      children: [
                        const Text(
                          "Height",
                          style: TextStyle(color: kActiveTextColor),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              height.toStringAsFixed(1),
                              style: const TextStyle(
                                color: kActiveTextColor,
                                fontSize: 50,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const Text(
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
                          value: height,
                          onChanged: (value) {
                            setState(() {
                              height = value;
                            });
                            var bmiValue = calculateBMI(
                              weigth: weight,
                              height: height,
                            );
                            setState(() {
                              bmi = bmiValue;
                            });
                          },
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 10),
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
                              Text(
                                "$weight",
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
                                    onPressed: () {
                                      setState(() {
                                        if (weight > 25) {
                                          weight--;
                                        }
                                      });
                                      var bmiValue = calculateBMI(
                                        weigth: weight,
                                        height: height,
                                      );
                                      setState(() {
                                        bmi = bmiValue;
                                      });
                                    },
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
                                    onPressed: () {
                                      setState(() {
                                        if (weight < 250) {
                                          weight++;
                                        }
                                      });
                                      var bmiValue = calculateBMI(
                                        weigth: weight,
                                        height: height,
                                      );
                                      setState(() {
                                        bmi = bmiValue;
                                      });
                                    },
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
                              Text(
                                "$age",
                                style: const TextStyle(
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
                                    onPressed: () {
                                      setState(() {
                                        if (age > 10) {
                                          age--;
                                        }
                                      });
                                      var bmiValue = calculateBMI(
                                        weigth: weight,
                                        height: height,
                                      );
                                      setState(() {
                                        bmi = bmiValue;
                                      });
                                    },
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
                                    onPressed: () {
                                      setState(() {
                                        if (age < 100) {
                                          age++;
                                        }
                                      });
                                      var bmiValue = calculateBMI(
                                        weigth: weight,
                                        height: height,
                                      );
                                      setState(() {
                                        bmi = bmiValue;
                                      });
                                    },
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
            Container(
              decoration: kTileBorderDecoration,
              padding: EdgeInsets.all(20),
              child: Column(
                children: [
                  const Text("BMI", style: TextStyle(color: kActiveTextColor)),
                  Text(
                    bmi.toStringAsFixed(1),
                    style: TextStyle(
                      color: getBMIColor(bmi),
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            Spacer(),
            Row(
              children: [
                Expanded(
                  child: TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: kTileButtonColor,
                      shape: const RoundedRectangleBorder(),
                      minimumSize: const Size(double.infinity, 60),
                    ),
                    onPressed: () {
                      bmi = calculateBMI(weigth: weight, height: height);
                      setState(() {
                        bmi = bmi;
                      });
                    },
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

  onTapTile() {
    isMale = true;
    var bmiValue = calculateBMI(weigth: weight, height: height);
    setState(() {
      bmi = bmiValue;
    });
  }
}
