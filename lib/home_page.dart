import 'package:flutter/material.dart';
import 'package:flutter_hometask_calculator/bmi_calculator.dart';
import 'package:flutter_hometask_calculator/bottm_container.dart';
import 'package:flutter_hometask_calculator/constat.dart';
import 'package:flutter_hometask_calculator/result_screen.dart';
import 'package:flutter_hometask_calculator/round_btn.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'bmi_card.dart';
import 'icon_content.dart';

enum Gender { male, female }

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Gender selectedGender;

  int height = 180;
  int weight = 74;
  int age = 28;
  var maleColor = const Color(0xff111328);
  var femaleColor = const Color(0xff111328);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff0A0E21),
        title: const Text('BMI CALCULATOR'),
        centerTitle: true,
      ),
      body: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
        Expanded(
          child: Row(
            children: [
              Expanded(
                child: BMICard(
                  color: selectedGender == Gender.male
                      ? kActiveColor
                      : kInactiveColor,
                  onPressed: () {
                    setState(() {
                      selectedGender = Gender.male;
                    });
                  },
                  cardChild:
                      IconContent(icon: FontAwesomeIcons.mars, title: 'Male'),
                ),
              ),
              Expanded(
                child: BMICard(
                  color: selectedGender == Gender.female
                      ? kActiveColor
                      : kInactiveColor,
                  onPressed: () {
                    setState(() {
                      selectedGender = Gender.female;
                    });
                  },
                  cardChild: IconContent(
                    icon: FontAwesomeIcons.venus,
                    title: 'Female',
                  ),
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: BMICard(
            color: kActiveColor,
            cardChild: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'HEIGHT',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      height.toString(),
                      style: kTitleTextStyle,
                    ),
                    Text(
                      'cm',
                      style: klabelTextstyle,
                    ),
                  ],
                ),
                SliderTheme(
                  data: SliderTheme.of(context).copyWith(
                    activeTrackColor: Colors.pink,
                    inactiveTrackColor: const Color(0XFF808E98),
                    thumbColor: const Color(0xFFEB1555),
                    overlayColor: const Color(0x29EB1555),
                  ),
                  child: Slider(
                    value: height.toDouble(),
                    max: 220.0,
                    min: 20.0,
                    onChanged: (double newValue) {
                      setState(() {
                        height = newValue.toInt();
                      });
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
        Expanded(
          child: Row(
            children: [
              Expanded(
                child: BMICard(
                  color: kActiveColor,
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text('WEIGHT', style: klabelTextstyle),
                      Text(
                        weight.toString(),
                        style: kTitleTextStyle,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          BMIRoundedBtn(
                              icon: FontAwesomeIcons.plus,
                              onPress: () {
                                setState(() {
                                  weight++;
                                });
                              }),
                          RawMaterialButton(
                            elevation: 0.0,
                            child: Icon(FontAwesomeIcons.minus),
                            onPressed: () {
                              setState(() {
                                weight--;
                              });
                            },
                            constraints:
                                BoxConstraints.tightFor(width: 55, height: 55),
                            shape: CircleBorder(),
                            fillColor: const Color(0xFF4C4F5E),
                          ),
                          Row(
                            children: [],
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                child: BMICard(
                  color: kActiveColor,
                  cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text('AGE', style: klabelTextstyle),
                        Text(
                          age.toString(),
                          style: kTitleTextStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            BMIRoundedBtn(
                                icon: FontAwesomeIcons.plus,
                                onPress: () {
                                  setState(() {
                                    age++;
                                  });
                                }),
                            RawMaterialButton(
                              elevation: 0.0,
                              child: Icon(FontAwesomeIcons.minus),
                              onPressed: () {
                                setState(() {
                                  age--;
                                });
                              },
                              constraints: BoxConstraints.tightFor(
                                  width: 55, height: 55),
                              shape: CircleBorder(),
                              fillColor: const Color(0xFF4C4F5E),
                            ),
                          ],
                        ),
                      ]),
                ),
              ),
            ],
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => ResultScreen()));
          },
          child: Container(
            height: 60,
            width: MediaQuery.of(context).size.width,
            color: Colors.pink,
            child: Center(
              child: Text(
                'CALCULATE',
                style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        )
      ]),
    );
  }
}
